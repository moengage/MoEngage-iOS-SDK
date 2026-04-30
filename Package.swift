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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.12.0/MoEngageCore.xcframework.zip", checksum: "70ddbbd8eea0e539786282864424b2eea59f3cd28e47c09ae63105a369c6f340"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageMessaging.xcframework.zip", checksum: "836d9898040c93fbfdaee20eea8ef5ba8086fe6b30b871d618475d1f4974a839"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageSDK.xcframework.zip", checksum: "98dc222eb8b44d78d08afef097b4748b75b7817efa8fec3cff45bd3c985f6252"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageSecurity.xcframework.zip", checksum: "3b3e7c38df628f36e72fb6da96aea1041a43913ec0aafe81d648e231a4e2e1ab"),
            .binaryTarget(name: "MoEngageCampaignsCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageCampaignsCore.xcframework.zip", checksum: "cfd5172e53fd9ad71a117374cd73d46dc7f8c5307d7e07328adea0f4a44a3044"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageTriggerEvaluator.xcframework.zip", checksum: "35b053a838641f0db4eba3ea12b2a55c9316aca306560e924a42d2730ba9e76b"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.12.0/MoEngageInApps.xcframework.zip", checksum: "fa8115b01ded23a3b0100fc5d8a6318479b241903ff4a65c9c4471367ea3f07c"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageCards.xcframework.zip", checksum: "33fba2e39bd82fdb2111c362593944d8b16907951db1151fe99d69388157a9d2"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngagePersonalization",
        targets: [
            .binaryTarget(name: "MoEngagePersonalization", url: "https://github.com/moengage/apple-sdk/releases/download/10.12.0/MoEngagePersonalization.xcframework.zip", checksum: "d2ef30605c756a4335aac023ca7185bc16751c14ba5bb1a95ee96ff38b1e1e90"),
            .target(name: "MoEngagePersonalizationSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageGeofence.xcframework.zip", checksum: "dae071c9010708e16f623a7ebd3ea5132813777a1499982624ea2157cec7cf0e"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageRichNotification.xcframework.zip", checksum: "189666415eab5bfbdb69675dfb2b724f763db0bc886dbf80f0abd5eef025d3fc"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageLiveActivity",
        targets: [
            .binaryTarget(name: "MoEngageLiveActivity", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageLiveActivity.xcframework.zip", checksum: "6edb113980af269e372dd4bec37f3308eeae0c315845a8d1fabc5c73037fb279"),
            .target(name: "MoEngageLiveActivitySPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageInbox.xcframework.zip", checksum: "1d0287fa8f38fc1987a4af8b0a99c057b89670471f128e6196e601e7111d35c1"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/MoEngageRealTimeTrigger.xcframework.zip", checksum: "af380e751863e44ac3c8e91011db324218ab719497486cb4a0e1d6b58276efbe"),
            .target(name: "MoEngageRealTimeTriggerSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "moengage-extensions-integration",
        targets: [
            .binaryTarget(name: "moengage-extensions-integration", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.2/moengage-extensions-integration.artifactbundle.zip", checksum: "ecf8dccde3af2ec825d574cd2396af35646a51287c14c93ef57b5074b949db4c"),
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

