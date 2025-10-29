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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.08.0/MoEngageCore.xcframework.zip", checksum: "109aae19562cd35b610cec9548e8b041634a509c142265d9f88e233740ab2535"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.08.0/MoEngageMessaging.xcframework.zip", checksum: "0c4add18321e3414540d8dd8e0d15d8efbee4699b263c1e52256701913e3bd49"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/10.07.1/MoEngageSDK.xcframework.zip", checksum: "f81a5160dde8e3d84a14ae62d2dae2a2e3ac5662a023efbeefc05788c31f78f9"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/10.02.1/MoEngageSecurity.xcframework.zip", checksum: "6d91ede2600a7fd7f389dcd0273381aa6df3f0ae11d70986b5a7d0a497b6e3c6"),
            .binaryTarget(name: "MoEngageCampaignsCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.08.0/MoEngageCampaignsCore.xcframework.zip", checksum: "4faf7919b5be7906ee3e40c104d41669659cd3458aa5e1bd7d6437fc4180baeb"),
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
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.08.0/MoEngageInApps.xcframework.zip", checksum: "d637cc95eb651ceef7d8d2963298a2c66ff4a85df560706659bc90a67785992b"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/10.08.0/MoEngageCards.xcframework.zip", checksum: "438834cc89185b5da55b875695f1fba4db5f15a119c812e3a18c088a27e0aef8"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/10.08.0/MoEngageGeofence.xcframework.zip", checksum: "a696c83a1c75a61a510b6dbbea6693a753036e22c6a99cb91cab2129ac10436d"),
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
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/10.08.0/MoEngageInbox.xcframework.zip", checksum: "15448803685f94002f4b177d51163a3c03ab39e7e7a6840aa67b24749464497b"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/10.08.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "8336f52bcc4fe6877ef703da462b77e14691e0264cc627ad0fbf0864631a0041"),
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

