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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageCore.xcframework.zip", checksum: "a11fa0ffd77708d71ca1250782ed19d2200c1650126976f0d9605c91ff65e340"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageMessaging.xcframework.zip", checksum: "365e06437d7e7389937a3c9de58301f9fa3bf004214211e924f38566fe61ce1a"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageSDK.xcframework.zip", checksum: "d4a74a134869551fe7eeb74d706ea911a2d04b14a027ad49df942ecccddb68b9"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "72736a4e7c571b3bc6e2207836e11cbb3a75d4f27a533ec8fc6ac1dfb0dfeb62"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageInApps.xcframework.zip", checksum: "5e40fb4992eb86bb4632089c38247a2a24216f2f70a6b689b1ed2f2b04ba6189"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageCards.xcframework.zip", checksum: "f4be60cf9141064bb65102953aaa0fadb327534dbac7438a3f1b29c48212b39a"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngagePersonalization",
        targets: [
            .binaryTarget(name: "MoEngagePersonalization", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngagePersonalization.xcframework.zip", checksum: "801835ccb18038c2f25f50eea7cb43bd72a1b111162bee0af02250aa2b67212a"),
            .target(name: "MoEngagePersonalizationSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageGeofence.xcframework.zip", checksum: "bf325e841b3283242f2bd3fed4345c93da324e688847c65a215d026184e89e3e"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageRichNotification.xcframework.zip", checksum: "b5ea639dae1c1fa4ff4aa97a9d69aec805e7aea66a05a364eaa1da66114f73f2"),
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
        name: "MoEngageTelemetry",
        targets: [
            .binaryTarget(name: "MoEngageTelemetry", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageTelemetry.xcframework.zip", checksum: "6eaf1d665529f38e1bc31a5465891cc139e085157252efad21a45e4506250adf"),
            .target(name: "MoEngageTelemetrySPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageInbox.xcframework.zip", checksum: "ea8e2addd6661d3bcaaf410e245b85ebb3194506d42975d2e08fd5bc8406cb1f"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/11.02.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "5f9e948b021b641bdce11bd1995832edf0413619c8b1218a01cfc53675c6178f"),
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

