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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageAnalytics.xcframework.zip", checksum: "bfa9e9b9f19ee220c2dd72236b7c740bad155b2522a7bd84d111bbbea799a092"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCore.xcframework.zip", checksum: "0fd495157814d31872c37e77f3e18c0ca876588824850b03143efd17ed56b365"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageMessaging.xcframework.zip", checksum: "eaabe13ada96ee991c16f708aaf809c17327a03a4c5cc0a8e96a59a1b67f714b"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageObjCUtils.xcframework.zip", checksum: "7b1cd1f94355f0f9c748911742ffa06d99791b5c5e138d2773289986b059a64e"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSDK.xcframework.zip", checksum: "b6c6c61b42ce4eaf4a92d3ec048e539ff5e96d2cb70f7d38cbd24600fc157101"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSecurity.xcframework.zip", checksum: "7b718e49a01ec5c7453a52dbdc5542f0e7fb248b35feb0ecb2c3bbd2ac35b845"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "0998e788b18bc247cba928f1d0f110b4f79e6fbf1b1c97f899584242e2a8d98d"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInApps.xcframework.zip", checksum: "c22d2b8613d35310daac4c6a6475b36a85a393db52c74dc404e7cd914166f469"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCards.xcframework.zip", checksum: "8a5fa07d55171689b0a466ba08bb3550d5d38bf44aba7c2b8b641e4fea928a9f"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageGeofence.xcframework.zip", checksum: "c69a7d01fa9f93da5295fefcf9e5345fe9551e3574df6f760a59131f3482d56e"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRichNotification.xcframework.zip", checksum: "76aaf23d02a7f071309a28afd7440c5f1852b1b8465346dbff615b0ab089a4ee"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInbox.xcframework.zip", checksum: "24469480f230481903eeb31fdc6eaccce01df7ef90005c7d096dfbd33cf1153d"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "85f12191ff73f2256be8dac4ede7d3df823f5af275a6a51851625e68b2a68c01"),
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

