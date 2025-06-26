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
// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This file generated from post_build script, modify the script instaed of this file.

import PackageDescription

let package = Package(
    name: "#{config.name}",
    platforms: [.iOS(.v13), .tvOS(.v13)],
    products: [], dependencies: [
        // can be updated to from:
        .package(url: "https://github.com/moengage/kmm-apple-sdk", exact: "#{config.kmm.ce}")
    ],
    targets: [],
    swiftLanguageVersions: [.v5]
)

struct MoEngagePackageProduct {
    let name: String
    let targets: [Target]
}

extension Collection where Element == Target.Dependency {
    static var `default`: [Target.Dependency] {
        return [
            "MoEngageCore", "MoEngageMessaging", "MoEngageSDK", "MoEngageSecurity","MoEngageCampaignsCore"
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
        name: "MoEngageSDK",
        targets: [
            #{binary_target(config_map['MoEngageCore'])},
            #{binary_target(config_map['MoEngageMessaging'])},
            #{binary_target(config_map['MoEngageSDK'])},
            #{binary_target(config_map['MoEngageSecurity'])},
            #{binary_target(config_map['MoEngageCampaignsCore'])},
        ]
    ),
    .init(
        name: "MoEngage-iOS-SDK",
        targets: [
            .target(
                name: "MoEngageSDKSPM",
                dependencies: .additional(
                    dependency: .product(
                        name: "MoEngageKMMConditionEvaluator", package: "kmm-apple-sdk"
                    )
                )
            ),
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
        name: "MoEngageLiveActivity",
        targets: [
            #{binary_target(config_map['MoEngageLiveActivity'])},
            .target(name: "MoEngageLiveActivitySPM", dependencies: .default),
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
