// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This file generated from post_build script, modify the script instaed of this file.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
    platforms: [.iOS(.v11), .tvOS(.v11)],
    products: [], dependencies: [], targets: [],
    swiftLanguageVersions: [.v5]
)

struct MoEngagePackageProduct {
    let name: String
    let targets: [Target]
}

extension Collection where Element == Target.Dependency {
    static var `default`: [Target.Dependency] {
        return [
            "MoEngageAnalytics", "MoEngageCore", "MoEngageMessaging",
            "MoEngageObjCUtils", "MoEngageSDK", "MoEngageSecurity",
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
        name: "MoEngage-iOS-SDK",
        targets: [
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageAnalytics.xcframework.zip", checksum: "eeab2ba48706a9ac8b7b38a09e02dd1a155aba58f37aaf8a2f681d2a8bf14ca6"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageCore.xcframework.zip", checksum: "aa4b2f25c0d0c8d5a1ee0ee17b0cbab60816ad91ba260157e475467e6fd5bc4e"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageMessaging.xcframework.zip", checksum: "4f0e8b5514167984dc3e2eb06a0ea38fb347482b34d5ef9ebb6d28006866f8ac"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageObjCUtils.xcframework.zip", checksum: "c9fca400b08f37f27bf718d0a2065715c712ccce2c303b70f13cde01537774a1"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageSDK.xcframework.zip", checksum: "02a2b7f1ea56c94e2546805edac4b0ab228aa19d48a40b8245e78c0974023e8b"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageSecurity.xcframework.zip", checksum: "3910f23410c6aad52a8942e3f03cab54797c47ac6d22d4270d2b3bb2a8fa8a7b"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageTriggerEvaluator.xcframework.zip", checksum: "68a73aec21c81c95a91382858c28e674b5e29a80e1057adff9aae2c4fd6b9316"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageInApps.xcframework.zip", checksum: "81273355005bffe64f5618f6ef67f5f1026a28bcddd914f4259ccd85140c7955"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageCards.xcframework.zip", checksum: "acadd07ad6d9ce555ae765d2c93bd60f7f07944cab9af591cdecbd8859f1ae4c"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageGeofence.xcframework.zip", checksum: "bca3e44ae83721b8c848e6a199d2642ab9abd36bc3d8446f6075a46d98f8ef83"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageRichNotification.xcframework.zip", checksum: "64a15088c2f168a943ace6e707460f2f1c84181bfeec3286fa5dbc45b73b3d7b"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageInbox.xcframework.zip", checksum: "ac4d0ec80071b93108e0011c276f59c517e8d47db1909f0dc0c6180347583130"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.20.1/MoEngageRealTimeTrigger.xcframework.zip", checksum: "2ca162f753daad5c88b1ef472ca3b76e3e83bc08fe15d547a33ff94ba4235070"),
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

