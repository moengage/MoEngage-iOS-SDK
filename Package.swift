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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageAnalytics.xcframework.zip", checksum: "53be0d6bd0fc3971ae6be5c07b5dc30193bf067172c506b86753957130c13c4d"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageCore.xcframework.zip", checksum: "b8bac8e5c9658a3e11b87c45b459210ba226b7e401b0879917a914c380daee87"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageMessaging.xcframework.zip", checksum: "be02fec9e9fe9cdcb9185fed38f97abdce44ec39f8d71963858b9ad96b768324"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageObjCUtils.xcframework.zip", checksum: "2cf5513001861f1178521bca960204d5523dbe0570e833b8ac92477d75ec1d27"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageSDK.xcframework.zip", checksum: "28ae5667faab8aafd1d2cabe30be0d5535c3be6080aff719fb7d1db6097a6916"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageSecurity.xcframework.zip", checksum: "fa0b40e6d73fb4aa910c267e47fad40e710cbde7201914ef9da0e6b36c0c0798"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageTriggerEvaluator.xcframework.zip", checksum: "b1da837aa60332f2d7989915ffc15e209b89bb52ac18d7168eca9589bb718b63"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageInApps.xcframework.zip", checksum: "e59ce9c92eec1566c3bffc99eb46f0baf9d5088ed028ca4bc3d680b44fcf77ad"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageCards.xcframework.zip", checksum: "dc1c3e8c2e39b8c9eefd2a5481b6b2916670b3201ab32cc1b9731f49f221f608"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageGeofence.xcframework.zip", checksum: "432ae59f57f701fdef7c8dd77e75643e5304413cfcbc4d8957d2f8214393e287"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageRichNotification.xcframework.zip", checksum: "70bd9a628f21e0af6c6eb69d69671103a2915a3e7676864eedf786b5f18ba247"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageInbox.xcframework.zip", checksum: "a86fbc1257af3b3b888441e3fdfc8eb4176e889eb70917cea7909e0c22799143"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageRealTimeTrigger.xcframework.zip", checksum: "3de2df64a5760d1a7a25af2c50d9ab4a2d485be7c5071b24efddb62e988f2fe9"),
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

