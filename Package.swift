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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.01.0/MoEngageCore.xcframework.zip", checksum: "318f3a93783519cd1489aa248873276de0e82cf33bef25a1978d8940e295b98e"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.01.0/MoEngageMessaging.xcframework.zip", checksum: "919a02fcc4abe431c1ec27045e5055621cfe261a1555c1d116bf1f2a76e521c6"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageSDK.xcframework.zip", checksum: "3bfccbf74e7838b16a47043e6679f120a0d8c9f0fcee86521a925b04abfb0bd6"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageSecurity.xcframework.zip", checksum: "204a9cdc5cd4b03090264d6daced4855916f79bad2cd514cbfc44e8d2a069b36"),
            .binaryTarget(name: "MoEngageCampaignsCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.01.0/MoEngageCampaignsCore.xcframework.zip", checksum: "bb783da03d73a088a1b690572c3e4bf52ffc6934b4da14cad3b0cdcbd75dd32e"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "1be2334b69aa17e5732158f92956d09e8479e2083330f77f3c6f0f4ff1630925"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.01.0/MoEngageInApps.xcframework.zip", checksum: "0cfb3e489ecdf726b40af8e34bfd13d078af8fb2c362a1bc08cde1efc7b441a7"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageCards.xcframework.zip", checksum: "70c270c6b41dd9a0b9bd58a0135d271b031996e241d27a82d724ac939959cdbc"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageGeofence.xcframework.zip", checksum: "9910eb3ce00a215cbcbcc14e34d54de9681dc562dda70d637ad30216b8071761"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/10.01.0/MoEngageRichNotification.xcframework.zip", checksum: "1fbe586d3538718ab4c684d295a07e8b06f2f4b226c4f8a6d6f583f54bfc29b0"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/10.01.0/MoEngageInbox.xcframework.zip", checksum: "1348ed9f31f85466a96a2732544ed96390231ce3212445bcabc99801e7f6fd8a"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/10.01.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "1662475bb21b664e273a708544e0a7f849b53912cd001c4b8a9cd67eec95488a"),
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

