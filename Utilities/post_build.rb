#!/usr/bin/ruby

# Usage:
# Update Package.swift file according to package.json

require 'fileutils'
require 'json'
require 'ostruct'

config = JSON.parse(File.read('package.json'), {object_class: OpenStruct})
config_map = Hash[ *config.packages.collect { |package| [ package.name, package ] }.flatten ]

def binary_target(package)
  ".binaryTarget(name: \"#{package.name}\", url: \"#{package.url}\", checksum: \"#{package[:hash]}\")"
end

package_swift = <<PACKAGE
// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This file generated from post_build script, modify the script instaed of this file.

import PackageDescription

let package = Package(
    name: "#{config.name}",
    platforms: [.iOS(.v11), .tvOS(.v11)],
    products: [], dependencies: [], targets: [],
    swiftLanguageVersions: [.v5]
)

struct MoEngagePackageProduct {
    let name: String
    let targets: [Target]
}

extension Collection where Element == Target.Dependency {
    static var `default`: [Target.Dependency] {
        return [
            "MoEngageAnalytics", "MoEngageCore", "MoEngageMessaging",
            "MoEngageObjCUtils", "MoEngageSDK", "MoEngageSecurity",
        ]
    }

    static func additional(dependency: Target.Dependency) -> [Target.Dependency] {
        var dependencies = Self.default
        dependencies.append(dependency)
        return dependencies
    }
}

let products: [MoEngagePackageProduct] = [
    .init(
        name: "MoEngage-iOS-SDK",
        targets: [
            #{binary_target(config_map['MoEngageAnalytics'])},
            #{binary_target(config_map['MoEngageCore'])},
            #{binary_target(config_map['MoEngageMessaging'])},
            #{binary_target(config_map['MoEngageObjCUtils'])},
            #{binary_target(config_map['MoEngageSDK'])},
            #{binary_target(config_map['MoEngageSecurity'])},
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            #{binary_target(config_map['MoEngageTriggerEvaluator'])},
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            #{binary_target(config_map['MoEngageInApps'])},
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            #{binary_target(config_map['MoEngageCards'])},
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            #{binary_target(config_map['MoEngageGeofence'])},
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            #{binary_target(config_map['MoEngageRichNotification'])},
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            #{binary_target(config_map['MoEngageInbox'])},
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            #{binary_target(config_map['MoEngageRealTimeTrigger'])},
            .target(name: "MoEngageRealTimeTriggerSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
]

for product in products {
    for target in product.targets {
        package.targets.append(target)
    }
    package.products.append(
        .library(name: product.name, targets: product.targets.map { $0.name })
    )
}

PACKAGE

File.open('Package.swift', 'w') do |file|
  file.write(package_swift)
end
