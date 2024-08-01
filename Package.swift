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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageAnalytics.xcframework.zip", checksum: "01e600d3f6e014240a15b77c74adfdd008f1581f2987c5a51acd5e2ac6f93f52"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageCore.xcframework.zip", checksum: "80593eb61d8546d5523bcf8d688fb65ebfcf06a5e9415bd9f751b69d5c7a68d3"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageMessaging.xcframework.zip", checksum: "b7d1a6ab478b702385ec042c14e1740a5fb1eaab0621f64ae436ca3b1f667f91"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageObjCUtils.xcframework.zip", checksum: "283ae91b7fd5251c91793e824a00c5336f2d1eb657cbc8e9a4fc246e7331adc3"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageSDK.xcframework.zip", checksum: "534c8d0221674a10a4f0e77b30ba9dea29d8ff220983f565d44fbf4696e4b0f7"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageSecurity.xcframework.zip", checksum: "a6a942c1eef24c6128cceb41c71d9fff25323a0304ea83aaab116d434ec7d277"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageTriggerEvaluator.xcframework.zip", checksum: "6493ab232a2081e23d865b6b0f862b9cd54b183bb9046329ed3bd1898e3ad836"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageInApps.xcframework.zip", checksum: "3675c9b04a24c7e0a24397123b96ee30c20515969e6c7c9a4091d86db6b41a33"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageCards.xcframework.zip", checksum: "50c040b225acbf4faffd447c36f88799b91f4b4a056a8ff76be65c1bfb9169ff"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageGeofence.xcframework.zip", checksum: "db97d5f33b3bf7629184578c3c4ec7fcda14f41bc8ca667a54fef5ced188ca96"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageRichNotification.xcframework.zip", checksum: "f90d79d3ab507aef2bc7fdd244dcc70e977a03ed5425cd5ed2b4f49c6bf21aff"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageInbox.xcframework.zip", checksum: "c064a5798dbc50cff6ad326d48029797cb246e410fe317450e73bef708a15304"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageRealTimeTrigger.xcframework.zip", checksum: "92fad08fb3eb751fe778f343d7ce9d52ae4ddea58aca49c94721bcfcfb9a508b"),
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

