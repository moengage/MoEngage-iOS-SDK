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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageAnalytics.xcframework.zip", checksum: "e739ec3d16567c4789ae8cba74fe4b864574b6c9adb4ddb84112abf5b701476b"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageCore.xcframework.zip", checksum: "09f6e45d7408df8bf9ebc1b3b4e2ef1dcafce291df524b4366805544f30b7302"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageMessaging.xcframework.zip", checksum: "0ae3b6764f09c11e1214149d568b05292ca5d0a01b0b96cf4e86fecc6ca3e638"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageObjCUtils.xcframework.zip", checksum: "cc7132354dc135a8577317c34d5a37403f8e2e7e883d38aa9f8f154e0440a432"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageSDK.xcframework.zip", checksum: "8f010ae3f8894aa12887f14f75163a06b3204d1cc934c40f525c9f30efb5ab3b"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageSecurity.xcframework.zip", checksum: "a832d5b20e0755a1e9dbb51f4813f50c094f5d4e3e003e9046cf2d7cfd74c89a"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageTriggerEvaluator.xcframework.zip", checksum: "476026cce8d76efecac6546693c96e840a85ce7197330ccf671f45c6a104d9c5"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageInApps.xcframework.zip", checksum: "15f10cae2516fb8dd231486fbd8b97df6fcbed0bee41d8260eb9a401c7674281"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageCards.xcframework.zip", checksum: "a2fbff3286fdb344a10b924830a4d10ea919547a52e0d6c4bc3879ed5104c7f8"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageGeofence.xcframework.zip", checksum: "03fdff711d2c45a4441af2cbdd97a23e828f4a5ff69364b7c614a6e0609082cf"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageRichNotification.xcframework.zip", checksum: "a3949cd63537097769e8061c8124a2c4b50828e68afe39dfe36cac7cdb9c5630"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageInbox.xcframework.zip", checksum: "45cad00d02f90bb2384ca0b0ff324ca4ead3d2cb1864f9f6f7d46bd048ffcc6d"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.1/MoEngageRealTimeTrigger.xcframework.zip", checksum: "05abd5bd91eec95a94e5d568f1b7d7020c151f12013f203b47dd9d5fc531698c"),
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

