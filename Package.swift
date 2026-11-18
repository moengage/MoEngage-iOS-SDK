// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This file generated from post_build script, modify the script instaed of this file.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
    platforms: [.iOS(.v13), .tvOS(.v13)],
    products: [], dependencies: [
        // can be updated to from:
        .package(url: "https://github.com/moengage/kmm-apple-sdk", exact: "2.0.1")
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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/11.05.0/MoEngageCore.xcframework.zip", checksum: "089e70243f0236ff3cdfce4fcd259720f519186d07d488d4ef4f2f38a4c301af"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/11.05.0/MoEngageMessaging.xcframework.zip", checksum: "c1a05d48a07e6936f6bedf81a0f6970cc7576642aeed63efa3089d6e80dfe68c"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/11.05.0/MoEngageSDK.xcframework.zip", checksum: "38f696163d92fc549838c314589178f1ecb6257e13ea59b339ba1a3a72f30184"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/11.00.0/MoEngageSecurity.xcframework.zip", checksum: "a0a388053557f5c61e5bea5b0c5fb950f10908028ff93f50cbd55d3443aadb45"),
            .binaryTarget(name: "MoEngageCampaignsCore", url: "https://github.com/moengage/apple-sdk/releases/download/11.05.0/MoEngageCampaignsCore.xcframework.zip", checksum: "f3bf93b7ac4bd18c41ab62956f93e77c7b5e28e2ce5fe03a371d2cc3229ccaf7"),
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
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/11.05.0/MoEngageInApps.xcframework.zip", checksum: "4888beb34e79b9e4ba5ade012f124bca91eb34796b2ee073f1fe8fe1d60760a2"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/11.03.0/MoEngageCards.xcframework.zip", checksum: "fb19d683efd03502b5e8e8791486869571df4d6bfd03aff7f22ccbe4a62dbfe4"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngagePersonalization",
        targets: [
            .binaryTarget(name: "MoEngagePersonalization", url: "https://github.com/moengage/apple-sdk/releases/download/11.04.0/MoEngagePersonalization.xcframework.zip", checksum: "4dbdcf541eacfb6514d19e04af48b8bf9d867ab9ba5f78e5d7c1bb85ec96a3ff"),
            .target(name: "MoEngagePersonalizationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRecommendations",
        targets: [
            .binaryTarget(name: "MoEngageRecommendations", url: "https://github.com/moengage/apple-sdk/releases/download/11.03.0/MoEngageRecommendations.xcframework.zip", checksum: "5e8695562989ba46422192961f3b7404386d530e9361a2638cfe4b3e483904bf"),
            .target(name: "MoEngageRecommendationsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/11.03.0/MoEngageGeofence.xcframework.zip", checksum: "6d2c7268e3b4d8f9c3a492ead6739acca2868e40614c918fcac402bacf443e7a"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/11.05.0/MoEngageRichNotification.xcframework.zip", checksum: "3082b6ca4a6e7d29b341c76d606c136df3cf95cf23081099a6b0d9e3ca0be7ac"),
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
            .binaryTarget(name: "moengage-extensions-integration", url: "https://github.com/moengage/apple-sdk/releases/download/11.05.0/moengage-extensions-integration.artifactbundle.zip", checksum: "7f47ef572f959fca8e2aec7a6f87554447ad1a4e1345920cb20d7636ed9a7a1a"),
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

