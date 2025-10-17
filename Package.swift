// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This file generated from post_build script, modify the script instaed of this file.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
    platforms: [.iOS(.v13), .tvOS(.v13)],
    products: [], dependencies: [
        // can be updated to from:
        .package(url: "https://github.com/moengage/kmm-apple-sdk", exact: "1.0.0")
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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.2/MoEngageCore.xcframework.zip", checksum: "ad2f0f78038620d7acbb5035780ba7343809cd3ad8759dc4210b95748b66d1ab"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.1/MoEngageMessaging.xcframework.zip", checksum: "f17208e6c2c27529674d0dbfa6524b135dce14df1c2392e12fbb936695c873fd"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.1/MoEngageSDK.xcframework.zip", checksum: "f81a5160dde8e3d84a14ae62d2dae2a2e3ac5662a023efbeefc05788c31f78f9"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageSecurity.xcframework.zip", checksum: "6d91ede2600a7fd7f389dcd0273381aa6df3f0ae11d70986b5a7d0a497b6e3c6"),
            .binaryTarget(name: "MoEngageCampaignsCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.1/MoEngageCampaignsCore.xcframework.zip", checksum: "e73e390d1fc24453de8d5f3e781faca36d53e712ab975eaf2e006abab27bfff8"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "3170abe5d8793c4e9decb34200ed546b53a373b0cdb7ccce14ec1c46a8a42dc3"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.1/MoEngageInApps.xcframework.zip", checksum: "fc1c7e309d2e51d8d81e87d1c2d5dbab2c6d4deda6d896ef75f40a0430956266"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.1/MoEngageCards.xcframework.zip", checksum: "0ef12930e16926bc90ddce04bf28f388f466dc740b05d0a327102b4f5e2b0674"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.2/MoEngageGeofence.xcframework.zip", checksum: "4647e7a3402be53995e82ba0693ae04b0b7d0dbf4aa78dadcede89f54a2e72df"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.2/MoEngageRichNotification.xcframework.zip", checksum: "880b79ab01c5eb4d3b488d9899eb38a429a80a3322b3c281e03f3d298ada3aae"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageLiveActivity",
        targets: [
            .binaryTarget(name: "MoEngageLiveActivity", url: "https://github.com/moengage/apple-sdk/releases/download/10.03.0/MoEngageLiveActivity.xcframework.zip", checksum: "da57badad9179522056a9d86bb179076ebc7ca5b06ab42f6c6c685761f1a70c9"),
            .target(name: "MoEngageLiveActivitySPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.1/MoEngageInbox.xcframework.zip", checksum: "f5db71912307744dee9a5ceff723ca66c4ceee37a241ecb53054164a8fefcad3"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.2/MoEngageRealTimeTrigger.xcframework.zip", checksum: "32181044bd12e6b6cce2f4cadeaf38a2e81da0e232bd898253a878eae900ab9f"),
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

