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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/apple-sdk/releases/download/9.24.0/MoEngageAnalytics.xcframework.zip", checksum: "0036459a7cd62f9334c3e9841ae870f84e541ac156fce634d5c513c7089de6f9"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/9.24.0/MoEngageCore.xcframework.zip", checksum: "833ed15fd72adbe992f4291f19f8f8ac92e0a5ca8b4b790f9e305d53540e4683"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/9.24.0/MoEngageMessaging.xcframework.zip", checksum: "01faebeb9ac7464d733c9019783140a8a62d193d9c1a9230e0a19f8e608d2c68"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/apple-sdk/releases/download/9.24.0/MoEngageObjCUtils.xcframework.zip", checksum: "b59a30629386ccaff16d2cb10a7968ba6ad50b625e6e2e77f9225ebf08492ffb"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/9.24.0/MoEngageSDK.xcframework.zip", checksum: "363252117da08838c8cc03922b6fd13d61eaa3dc254cb283cc14b4da31a0580d"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageSecurity.xcframework.zip", checksum: "9f6cd3de7093d8ff67f07a1cbfda31d3c870601321b3c92ddfbfed27a786b757"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "547854ceed99693bede020e18987de36bba56b7334b5ddb0e518b7e6de363e71"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/9.24.0/MoEngageInApps.xcframework.zip", checksum: "9ba8e022fb20d1582a8c489da0a566fe36bb88e6fc65c6dae6d2907e0e53202e"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/9.23.2/MoEngageCards.xcframework.zip", checksum: "6995ce132a7d931788bf8a094c983ea89cbb3711a9c88ee4de8759a94e80d36f"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/9.23.1/MoEngageGeofence.xcframework.zip", checksum: "10d998309842a75af4f30329f797076a3f87b273f794a508048f0a2aef71efd0"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageRichNotification.xcframework.zip", checksum: "f0905f6f16c1f6d3ca97c349ce77809041818bc57bee58cd6a2fe904fe28f45c"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/9.24.0/MoEngageInbox.xcframework.zip", checksum: "3b7e7f07eaaf11655b081eeb016d646f9e12f3f1cb0f149f9c3230b6eb143e2f"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/9.23.1/MoEngageRealTimeTrigger.xcframework.zip", checksum: "5d31dba1bbd3ba5187c99aa6bf25fd3537e6ff1f6e4411e156551aae8aec580d"),
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

