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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageAnalytics.xcframework.zip", checksum: "3e3f846a112aa033d1197c9719688e88f05121b78b07349422d0b0155fcc8b67"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageCore.xcframework.zip", checksum: "d51073c948c162a56424ecfddbb2661200ec3db73e13b4a9f418271c00d93a12"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageMessaging.xcframework.zip", checksum: "3ce4bd19acc0569999361df2b93c63c09ab46810ff706383ab69545cfb3a7d6c"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageObjCUtils.xcframework.zip", checksum: "52b1c15b89fc1a1faabc257660f994456877822da572322cf04ed263cd64f5a5"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageSDK.xcframework.zip", checksum: "c47bb630de4deb0fe20b182501ed7a3b5edcda3f11219d5c7ab67849671bb7f1"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageSecurity.xcframework.zip", checksum: "fccba6e5e6132aaed563f3e390f2b20893de12be1fef5806762f35693ed044c8"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "51beecf2dbb1f2f0f1cbb228defa26cd87036b484d7ee85f957bd69e8d1777d3"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageInApps.xcframework.zip", checksum: "a233c39587323dc3b76022a375d857be8196a39200dfb999c94f4537597fbb84"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageCards.xcframework.zip", checksum: "a82c68759b7805a1b7c7ab08e2442bc0b62f608f8fcb1e7145c53e3a69328c93"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageGeofence.xcframework.zip", checksum: "6d5b6dcd4a7fbb288b221bf694385b038cd79ee97ac3e11f80ef714480d35e6d"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageRichNotification.xcframework.zip", checksum: "b10c16744c34128aa714dc0a50309daa379b3e2ae08ea3f3b6110b72b43f70e2"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageInbox.xcframework.zip", checksum: "6c3a7b33d85583ab1873fbb02f0de62b90290e3dea93ab0d6ea1d222005e4849"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.19.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "a9e4863331c7f35e91e1bc41b7000b48ebffc8762aeadb7dab6518bb7b10210f"),
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

