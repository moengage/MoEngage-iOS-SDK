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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.14.0/MoEngageCore.xcframework.zip", checksum: "bd845d333cfdf986907244dab936aeeb53e911c7648d154deeb88555c808a997"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.14.0/MoEngageMessaging.xcframework.zip", checksum: "4f58e6295ef5c8fe3f9421396f9c4fe32ce4173fb9bbd0a55eb9e42fa4ae21e7"),
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
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.14.0/MoEngageInApps.xcframework.zip", checksum: "fe9b91d755267860a9abeb1ac1c091a5194a613ecd6eeda92ae2d7d2d153d24a"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/10.13.0/MoEngageCards.xcframework.zip", checksum: "757545a12975687f33a12b26e01f06b5f968c2209dd164203bc00b25b00ba257"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngagePersonalization",
        targets: [
            .binaryTarget(name: "MoEngagePersonalization", url: "https://github.com/moengage/apple-sdk/releases/download/10.14.0/MoEngagePersonalization.xcframework.zip", checksum: "e8fa690ea8130a2f3f763514e3f777c9f4fd611eea09bf469739e836ec9df76f"),
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
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/10.13.0/MoEngageRichNotification.xcframework.zip", checksum: "bc0f4e47c47d077dbb03955487e51016eeb36607c570da29752e90095e9c6bf4"),
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
            .binaryTarget(name: "moengage-extensions-integration", url: "https://github.com/moengage/apple-sdk/releases/download/10.14.0/moengage-extensions-integration.artifactbundle.zip", checksum: "0eb1ef196b19ae4ee65b5741f66257fc03eb44cda50e1f32b29f1c6b605555b9"),
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

