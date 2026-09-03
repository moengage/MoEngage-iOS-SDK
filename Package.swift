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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageCore.xcframework.zip", checksum: "10fd8be8c2224276ad25ce9f282844c0e9ae220a0dd4b7f0f31f5f7f17b664eb"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageMessaging.xcframework.zip", checksum: "ccd65629b1e066a9b6912e77815390c06671d2c29bda463d26327dcbf6d7d809"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageSDK.xcframework.zip", checksum: "4889de938659e96d46dc202ff94bb491abf6fdae887b45e7650c2d621bd0fe26"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "ec2ec80358350f6c74d47aa86ad8e7e0c0db3b04378f2210e32b94722fe7e860"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageInApps.xcframework.zip", checksum: "219e83b022f4a11094f2b508e5a35db5eadcddf5c062675a2ca6d935b8e916f6"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageCards.xcframework.zip", checksum: "ead2b54d7a028be8f29977beb4e37ab46329bda25416009c815956f849c1df3c"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngagePersonalization",
        targets: [
            .binaryTarget(name: "MoEngagePersonalization", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngagePersonalization.xcframework.zip", checksum: "d1ece92176f57089279c3ca0e9c07094c37b46cc989b7136ba3f131315c8933e"),
            .target(name: "MoEngagePersonalizationSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageGeofence.xcframework.zip", checksum: "995937888dd5437728f2f4719f9fdde0f8fb646593eddbcf5c3c64b20b330a0c"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageRichNotification.xcframework.zip", checksum: "943edd3def4888eab40fcec7f601703b6b75e05b3e529587c913374dbc2dec35"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageLiveActivity",
        targets: [
            .binaryTarget(name: "MoEngageLiveActivity", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageLiveActivity.xcframework.zip", checksum: "4c3079b5e1b36b2427f7a5dadabe09a89b7a15880ee8677507b3d220d438bbc2"),
            .target(name: "MoEngageLiveActivitySPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageInbox.xcframework.zip", checksum: "28220706d0d289d08fb6ed22573ac61527f41478d959264670f276a60c60d2e2"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "00099a7faeafdb38e149518a32bbc6bb42b497895dd5de0d6713179dfbc2f94b"),
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

