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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageCore.xcframework.zip", checksum: "52ef0cb3982bd6aec9ee786448bf255c7631a25c25a37651a94869fbbdbe2512"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageMessaging.xcframework.zip", checksum: "40b2f9315edb123a7de5f310423fee62e20b629734856ff4f378f3abe123182f"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageSDK.xcframework.zip", checksum: "d0ba97b647c2776d77e3f5058e161996c05f28a4a735cd74b5164038dfc5c233"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "92f6f580ff10f1ac4132f8becd74af2183cab059903ba46212275c1ece5f3c44"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageInApps.xcframework.zip", checksum: "e45bc49032b952b9715e5b3b370cc705826cc1eb7ba2333711c5238411e156df"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageCards.xcframework.zip", checksum: "a0467adf668e3905af6a76082b6fbe18ddc5ebcf2947531117abb5b7d6ed98e5"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngagePersonalization",
        targets: [
            .binaryTarget(name: "MoEngagePersonalization", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngagePersonalization.xcframework.zip", checksum: "0cfe995049b527d51f841b42bf8d69b3cd0f98bd31b8f5bbf18e829b5826ebe2"),
            .target(name: "MoEngagePersonalizationSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageGeofence.xcframework.zip", checksum: "0afd2c9a7fb0ae31a50b8f46f153143dc95021cc05ebdb04d1a9ce1d97768e88"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageRichNotification.xcframework.zip", checksum: "86ad1cafcb62d900be8b052d0f6bade267d9111ac4ac803a6e628811bc3882a1"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageLiveActivity",
        targets: [
            .binaryTarget(name: "MoEngageLiveActivity", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageLiveActivity.xcframework.zip", checksum: "ba9448afc2d7aef8af899faef7bf242cb64a1855bbd0634dd4fcb4f3e9fea873"),
            .target(name: "MoEngageLiveActivitySPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageInbox.xcframework.zip", checksum: "4c9a2168b2b6d5c273e7599a60790726f60b556a6bc5280f1705b63c68350be5"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "a0118d56caac3ffa60d99e31265e43ddb0c513b40c847f43d1dbf46376cf4259"),
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

