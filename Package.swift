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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.0/MoEngageCore.xcframework.zip", checksum: "a934d9d1177aad8ed812f8b0e00e01141fa36f239a345261a2da0e6736d1011c"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.0/MoEngageMessaging.xcframework.zip", checksum: "5ef139e1e7b36659ffc81bc94398754861c0e7b471c5ddf7016d32e6cbe6bb71"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/10.03.0/MoEngageSDK.xcframework.zip", checksum: "12cf52754f1cc25792dedb42be003fe577073aa50b5f424212e7f64d65879645"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "3170abe5d8793c4e9decb34200ed546b53a373b0cdb7ccce14ec1c46a8a42dc3"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.0/MoEngageInApps.xcframework.zip", checksum: "788c7a20e406f6210f4bc785688b7b73fa3e70303d18b6942688b19cd022a895"),
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
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/10.03.0/MoEngageGeofence.xcframework.zip", checksum: "5cf0834dd0995876cb65f030e59d6b9e099376f4181342503660c632f5525f3b"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/10.03.0/MoEngageRichNotification.xcframework.zip", checksum: "987307567b53d1f2453c11466b4f94ec3d8a4ce3c2cca9024227ead7525f9eef"),
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

