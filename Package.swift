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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageAnalytics.xcframework.zip", checksum: "d406617d5d1542215e0898d294c53c206d3ebb86a69c2759ec3202ad62cf7550"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageCore.xcframework.zip", checksum: "71dc53e56b7f7898561d3c534c6f62bcd3e0e29f3ec6b958089facb02e6ee239"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageMessaging.xcframework.zip", checksum: "fef1d9a88f66c97f4a5c3209e8e61a25381cb82700081a5b878ec05b7e2d4337"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageObjCUtils.xcframework.zip", checksum: "48ef57146996652aa0a54ad838d9afce5eaa7e4c47f92f00c507ad9b9749b0c4"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageSDK.xcframework.zip", checksum: "9620f2b705a71931e8984b48bb15a55323260b217538852dac59498e7d7cf6cd"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageSecurity.xcframework.zip", checksum: "99e6d9ad4cd337ef5b7da7ec6cbee2419599a258994908129f5009d42d9769a8"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "c9dbbc828ecf29363de9593ec2e16c2af576b51198ce4890e209c31626fe3dc1"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageInApps.xcframework.zip", checksum: "017e7295276b44a92aca01423af453f3cb5f3b2f5850344aaad5342128063317"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageCards.xcframework.zip", checksum: "6dad457718914d971ee65881af9f692ca08d3b9367a37287cf6e1005cb82fb7d"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageGeofence.xcframework.zip", checksum: "8b1d8939fb1b243154d61da55c11e7da2f04efd7cc86ccf2cb34e1ee7c3f3c65"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageRichNotification.xcframework.zip", checksum: "364d7446cee8eb75ee872f60d3158f240e0edb53d81671e809a0c4cac8632b27"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageInbox.xcframework.zip", checksum: "54513939d6d4713060711fed0d5e9a4f069b5bf8e3875bff7f9f9f632564fe7a"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "e01026245015ff8a5026503e7ae41b94a01150a89df1409dffb06c1fa8bcf0a7"),
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

