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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.22.0/MoEngageAnalytics.xcframework.zip", checksum: "f810fc0b3a8b7c4fa61ee5f3e8f82b57f8e4a5be85e2e02a324c3c1f26b7fdf9"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/9.22.2/MoEngageCore.xcframework.zip", checksum: "865528f05b77aedf690bc9cc9dfc037e2614f6b5ccd0dd6f48999c0b970b1a1c"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageMessaging.xcframework.zip", checksum: "b6c5b2c75e51d37693ecb6f3f29e205f4c1c3063a18249e6144cf72fd4cd406b"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageObjCUtils.xcframework.zip", checksum: "00303f9ccc8882546709fcfbefa6b7ff305e5d8dee24af42360ad7e62020b0d1"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageSDK.xcframework.zip", checksum: "25994092c82b0ce008eaf08fefe6964338b9652c93e28087a7adbb752f59fe37"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageSecurity.xcframework.zip", checksum: "9f6cd3de7093d8ff67f07a1cbfda31d3c870601321b3c92ddfbfed27a786b757"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "547854ceed99693bede020e18987de36bba56b7334b5ddb0e518b7e6de363e71"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.22.0/MoEngageInApps.xcframework.zip", checksum: "7f398485b2508a799dde89abed20bbbb47d31e72219c073034c3b5b40a304532"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/9.22.2/MoEngageCards.xcframework.zip", checksum: "9d7ea863ef0730c9c918f2b176b349a4a47f9c3c6184112fca9e0530c1247f65"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageGeofence.xcframework.zip", checksum: "a33ed85ab3ba8ef8069305f9548458203e107b91db522bb295829598a9152006"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageRichNotification.xcframework.zip", checksum: "f0905f6f16c1f6d3ca97c349ce77809041818bc57bee58cd6a2fe904fe28f45c"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageInbox.xcframework.zip", checksum: "c250d876229de1d753cf2c93c02dcda6606482277222f11ba6425b12107f0013"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.21.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "cd8459f589d6b67696a7dc5805657f0f3a2e0eb17edad0d0ee8bf248d915b591"),
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

