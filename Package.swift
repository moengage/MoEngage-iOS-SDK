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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageAnalytics.xcframework.zip", checksum: "a2b8043aaced1b27856969d13467f2eb33c205fb4aabd1ff28af88a25459af9a"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCore.xcframework.zip", checksum: "8f0a65b75255258740410d0c0bc77f45854014ffdc67b0118c91c7a1d50db7a0"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageMessaging.xcframework.zip", checksum: "e210f909864858fe51c5228df1767cf2414d77533f832ed05e46965b93134dcb"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageObjCUtils.xcframework.zip", checksum: "696113dac02249bd21755f074eb24fbe3a3c56a05f55b69644a3558303a8fb70"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSDK.xcframework.zip", checksum: "8b35352939316a06aabdfeb4e875b93ab6f50378cd049b177cc1f981de703225"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSecurity.xcframework.zip", checksum: "08f8f5e3e5d2e2b41f38129200659e53aeb9e689a9a560909cf32d2de32ce541"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "3cb3a8c29dcf85c826a0a75943a3585b85fb81098f1c7411d1562a8a17dbc416"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInApps.xcframework.zip", checksum: "5c088f252f5a10bf6b53d162fb845b73d1541c0f7179f5053aa50f0b93e22c9b"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCards.xcframework.zip", checksum: "36e0b00ebc888a40ac416c5b3d5cab7e6760e5a4b1106e42793bb769bfd83783"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageGeofence.xcframework.zip", checksum: "0f19e11f09e8cb118b11fa5c54a3d4c6a09072572adfbf89f179d58a675da492"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRichNotification.xcframework.zip", checksum: "16ee1acfe55a7a879d8d8542685707a21dbc237344e7ec8abe522dae38cfb838"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInbox.xcframework.zip", checksum: "43d78358acd2da57430fd1b5619683d45581ac5bd43fb31b80a60885f8330518"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "858c2a725f835b044b5fc435b60b17abfb45ff40677a441112e1651306e0b760"),
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

