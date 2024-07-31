// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This file generated from post_build script, modify the script instaed of this file.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageAnalytics.xcframework.zip", checksum: "4d7b7302c0f1851ea837c68a7f6ea7c27f4579afbbf55247e9dc0eb0b4623fb0"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCore.xcframework.zip", checksum: "caeb926ba1f46036694ef8cbc69200f0841efbce6120da85dfab779d2ed1ca60"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageMessaging.xcframework.zip", checksum: "80bc024ba843217488c48761ee7cc70b6eee12d5bd865adafc7c3bfbcc35b631"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageObjCUtils.xcframework.zip", checksum: "1e086bea14359b203b029d9641604f3ebfcd03da4b83f99f68f9b1e2cc8e1031"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSDK.xcframework.zip", checksum: "094c9dcd08e9294c7acd2a6520291108a87eeb86c20bb9b9342e40a2263d8542"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSecurity.xcframework.zip", checksum: "699752ad6d150848b9d70c213743b3e03b7b1ed726875bd3a38fcc43f8f47660"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "9f9346d6b8fd8b1a37f6b1776f47856781aece500668f3b4961943b5f7c27dc3"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInApps.xcframework.zip", checksum: "2bffdcf787c4bbb0018a5e4b88d1ecd90b0bd7a1b17f3f81e2f7af73d5e069ca"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCards.xcframework.zip", checksum: "0d7bb43b90beb293bfe2cc61cea2ee9d5c18b7a7204a3180574ec8abac0d5087"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageGeofence.xcframework.zip", checksum: "5b057ce58327c3f3d08a98444257932b9e27123110564cc0a8ce5ae4d5237fcd"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRichNotification.xcframework.zip", checksum: "d234815533dc789f79288535e6be6c01d44df8baf67c3aea1622b8a31cb345cf"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInbox.xcframework.zip", checksum: "9857c812b1b4b01f705ea211ca901b6812978d62649c1d003ec2eda010fb8f6e"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "adc7fddcbaa7c226dff87276c10e4f14d47e161124fbc9f9698d1b9e17e7f136"),
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

