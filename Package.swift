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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageCore.xcframework.zip", checksum: "d9ae159f9ddb635a13da80cad472aa21723df3fca7f881ba2ffba3dfb4faf1f8"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageMessaging.xcframework.zip", checksum: "7525f875f416c9faf91deffcc9381ca897d4b503ba10145ce82c20e401b56c19"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageSDK.xcframework.zip", checksum: "9c1f70daf2f1d0dd3761b9e245b334a8a020053f31c9f0175584c6aa2575aac6"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "74208384ca674beef1448c1636792dcddec56cda4574267a6106799190a69e3b"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageInApps.xcframework.zip", checksum: "ee976ffa1b4edac3f87e5438f752dd7726efb5cae0b3ce28ec69ef937c7ed216"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageCards.xcframework.zip", checksum: "9178d8a770d281c744841e2000f95a79bb00a2b8cf437c0ecde8287123468227"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngagePersonalization",
        targets: [
            .binaryTarget(name: "MoEngagePersonalization", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngagePersonalization.xcframework.zip", checksum: "46e131919d809b051f95e978dc5a9e4b32724f8c0379e3e65a1bf8e7660e62b3"),
            .target(name: "MoEngagePersonalizationSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageGeofence.xcframework.zip", checksum: "927cfdb813dd5e0f261b9ce6ed39a6a38419e4ee87126200fb89dd3a642094ad"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageRichNotification.xcframework.zip", checksum: "a9055788b30df0fec67e14087707fb7c5fe7b3263a2900e2841c9150e5f8661a"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageLiveActivity",
        targets: [
            .binaryTarget(name: "MoEngageLiveActivity", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageLiveActivity.xcframework.zip", checksum: "ef0bd2eaa14fa6bf99c3c6dcfaa91547496a0107cc411f19be81d2b000ba7fd2"),
            .target(name: "MoEngageLiveActivitySPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageInbox.xcframework.zip", checksum: "894499659d5d2f4643ae144b07dbb2033c30d5db35b0fa37f03179440a7c160c"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/11.01.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "654ad004d489d23541805d4a1a0abe5b6563bd36a8c6b0ccd03ab82469ec3440"),
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

