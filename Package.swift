// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This file generated from post_build script, modify the script instaed of this file.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
    platforms: [.iOS(.v13), .tvOS(.v13)],
    products: [], dependencies: [
        // can be updated to from:
        .package(url: "https://github.com/moengage/kmm-apple-sdk", exact: "1.0.1")
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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageCore.xcframework.zip", checksum: "c2d9ee58fd0db08db858b896618bb549971ef2f9459658d98336bc3237a4203b"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageMessaging.xcframework.zip", checksum: "ab02391b3344cc5ec7aad2c899945efc73a9623e06afef6b6f9432d09fe4a60c"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageSDK.xcframework.zip", checksum: "042cf5fa2fdcf1b3bcf4e00c2b90772ac2c7a413f2840bd7fa6ef5117d215854"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageSecurity.xcframework.zip", checksum: "a0a388053557f5c61e5bea5b0c5fb950f10908028ff93f50cbd55d3443aadb45"),
            .binaryTarget(name: "MoEngageCampaignsCore", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageCampaignsCore.xcframework.zip", checksum: "207cfbeb924d02ada80034761174692f3b0ebc24183b3b7044a7abc16e30df5b"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "8eb06a77b5f3d9030a894ac93bb5209c764f49a1d11d2d62b4eb3fe87334bd37"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageInApps.xcframework.zip", checksum: "72e2813786462e21d77057aa22d84cad63664761514323f035f78f196a590cc0"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageCards.xcframework.zip", checksum: "03708417c403233e81523a8c2e9b030a555a12a6bab2e03312a134bed1e1023b"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngagePersonalization",
        targets: [
            .binaryTarget(name: "MoEngagePersonalization", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngagePersonalization.xcframework.zip", checksum: "520470c823b440c4f0194782d2396bcade7e79a2cf4db2a143396c14cbb9fd1f"),
            .target(name: "MoEngagePersonalizationSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageGeofence.xcframework.zip", checksum: "e65aa2fc3885b7045f4ae2501d3eb0284af311498933dfb5da98be827460f631"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageRichNotification.xcframework.zip", checksum: "864c3a3a4fad2d60ebfd433b46f494994d3a42166c6423b0f7e1c88d1677516b"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageLiveActivity",
        targets: [
            .binaryTarget(name: "MoEngageLiveActivity", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageLiveActivity.xcframework.zip", checksum: "4003c991194c33bffdb73894b3c13453890729e248c22a2b1879362ec24a18c5"),
            .target(name: "MoEngageLiveActivitySPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageInbox.xcframework.zip", checksum: "d4f66a32dc394ee941f27b5aabfe2bf3829b9ac88574090ee19bff04b0b47d89"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "f841fcf028b1876d6d8b50fa93d590885444998dbee609df5a83d11ff70d4763"),
            .target(name: "MoEngageRealTimeTriggerSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "moengage-extensions-integration",
        targets: [
            .binaryTarget(name: "moengage-extensions-integration", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/moengage-extensions-integration.artifactbundle.zip", checksum: "d3b064b848791d471ee6aa728eebc5f6f413cfe2883f78dc761ad30888d62a1e"),
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

