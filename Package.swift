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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.1/MoEngageCore.xcframework.zip", checksum: "1e3e3257c4702e2f35759cb24c8e73145e8169ca591df20a8a0e8ca4c2deea2e"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.1/MoEngageMessaging.xcframework.zip", checksum: "0ddff92c557622af2d6556e29b8e4cb094a32401ed250d2dc0d84367ed329189"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/10.03.0/MoEngageSDK.xcframework.zip", checksum: "12cf52754f1cc25792dedb42be003fe577073aa50b5f424212e7f64d65879645"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageSecurity.xcframework.zip", checksum: "6d91ede2600a7fd7f389dcd0273381aa6df3f0ae11d70986b5a7d0a497b6e3c6"),
            .binaryTarget(name: "MoEngageCampaignsCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.1/MoEngageCampaignsCore.xcframework.zip", checksum: "b06ecb20d64d47b37f275f8406f2892b2ce78352ecb9ecc48c84a2eb7a98f849"),
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
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.1/MoEngageInApps.xcframework.zip", checksum: "e91900a6f03b6fbd4ffdeb068c1fdc0c6e512a6310fadd5547e538ee34d93613"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/10.04.1/MoEngageCards.xcframework.zip", checksum: "706b9e48025f40d0291408fcd4ee297c6ca74cd803260cb6585661832bfe3027"),
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

