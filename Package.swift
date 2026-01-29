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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageCore.xcframework.zip", checksum: "fb57254aae86d9f78593274867a6e7205037b16cdb8efae04bd9ca20c26ec3a4"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageMessaging.xcframework.zip", checksum: "75c67153fa5dffbb78693d0b1131e20d300b5b10ae634f125007a3a59b368384"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageSDK.xcframework.zip", checksum: "98b425f503ac0e7e218bf0ba9aae764f5bf8e76cecc63395b483be9f393df810"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageSecurity.xcframework.zip", checksum: "59459215dffb7a78ce60dc9065fb87ff1803578dec940bf2125ff5775d091137"),
            .binaryTarget(name: "MoEngageCampaignsCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageCampaignsCore.xcframework.zip", checksum: "4041676f1bdf4bafe427ebbf64b37562a3dbf3627039ea57f2cebe7657a89e54"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "7dd99f36a6db3b30c0eaf50f21a165b05641a21057384e66d85d0658dc543cb8"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageInApps.xcframework.zip", checksum: "2fc44f9b34418d230fa1553a83bea93467d6ebbd805da0a1a31fd8fbcb4aeb3d"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageCards.xcframework.zip", checksum: "84cf27a3f2298b4a7b33f868f2681e159571cfb76cf015906cf64544c782cb9e"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageGeofence.xcframework.zip", checksum: "d518160831e07ca04cf608c54ab675991f71b4d9ce46448db7b5a75c30353148"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageRichNotification.xcframework.zip", checksum: "5ac2f6d6e3073f39b3936792f4c1e187aa75cc201765dc402eeaa2b7055da2cf"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageLiveActivity",
        targets: [
            .binaryTarget(name: "MoEngageLiveActivity", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageLiveActivity.xcframework.zip", checksum: "07f0eb249bd279e755a55cbb159a4b420d92fba38218cfe6b400b3891d29f14e"),
            .target(name: "MoEngageLiveActivitySPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageInbox.xcframework.zip", checksum: "99499685d00b6622b4aa52711b950f67565b50a4c6d2663b898c4a1736d18d77"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/10.10.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "abaa247575e33e98b22b44a69e400f9082d922b8f5419a063b7146eebfa3150e"),
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

