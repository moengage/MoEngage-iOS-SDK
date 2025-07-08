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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.3/MoEngageCore.xcframework.zip", checksum: "4f3a4629072db4ac4aae7c67e5f11f6ad50c887255eb976df060ae7087a68067"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageMessaging.xcframework.zip", checksum: "5da232336babc865c30d9f8ca498d049421efde15633057adc808bd133d52657"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.2/MoEngageSDK.xcframework.zip", checksum: "a72a9469ffa49b2c0781cb6494535bd9def683cea87cce8bf6f6fdcbede63874"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageSecurity.xcframework.zip", checksum: "6d91ede2600a7fd7f389dcd0273381aa6df3f0ae11d70986b5a7d0a497b6e3c6"),
            .binaryTarget(name: "MoEngageCampaignsCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageCampaignsCore.xcframework.zip", checksum: "b122866fc2322b02848a217b72ffe50a366a8efdb26993167ff847e55b01652f"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageTriggerEvaluator.xcframework.zip", checksum: "b0cb40b8c98cb8f6d695e64ba62a99570547e638d7cbe0c6cc576988006567eb"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageInApps.xcframework.zip", checksum: "09ace8d1737c79f1528b2665a81974515c7e7a45fdef59df338e2c778116a016"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.3/MoEngageCards.xcframework.zip", checksum: "7d4fc56840ac2dcf9e1b86bc7346f5a78e626fb32a5d0d3f4c229fe0d21640c8"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageGeofence.xcframework.zip", checksum: "f37b4377bc85f62dbe9b97ceb60ff8320753df8eb4a5f4c361bfe0249ab7cba6"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageRichNotification.xcframework.zip", checksum: "ec3c23d28f9e7df62f92ba1e5755e6ae1ce4364adbd376e53eb46217624aadcf"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageLiveActivity",
        targets: [
            .binaryTarget(name: "MoEngageLiveActivity", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageLiveActivity.xcframework.zip", checksum: "45c0b40cb7bd26b4a168c434368c1cb6d7a3deb28037243fc1f0d9e4f5ec3832"),
            .target(name: "MoEngageLiveActivitySPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageInbox.xcframework.zip", checksum: "3f190bccbaebfe6d35a441613aa44d61e32aa5c19de291e04340c99f9237df02"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageRealTimeTrigger.xcframework.zip", checksum: "cc8771ee1062c47df05b29e955be8a55790238e557e96723310fd5dbecb4f57a"),
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

