// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.
// This file generated from post_build script, modify the script instaed of this file.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
    platforms: [.iOS(.v13), .tvOS(.v13)],
    products: [], dependencies: [
        // can be updated to from:
        .package(url: "https://github.com/moengage/kmm-apple-sdk", exact: "1.0.0")
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
            "MoEngageCore", "MoEngageMessaging", "MoEngageSDK", "MoEngageSecurity",
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
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageCore.xcframework.zip", checksum: "9b85330a4a8977872f2d50b318ce542f747b39fb248e754b7a2794fc12f1c1e8"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageMessaging.xcframework.zip", checksum: "6ab4c802ab44f61124992dfc9c15e0c369c525dfcac58b9d20839c6bafd8dd45"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageSDK.xcframework.zip", checksum: "3bfccbf74e7838b16a47043e6679f120a0d8c9f0fcee86521a925b04abfb0bd6"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageSecurity.xcframework.zip", checksum: "204a9cdc5cd4b03090264d6daced4855916f79bad2cd514cbfc44e8d2a069b36"),
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
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "1be2334b69aa17e5732158f92956d09e8479e2083330f77f3c6f0f4ff1630925"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageInApps.xcframework.zip", checksum: "604e456d1ec7292fd50366574ac27b2d40c5125fd111edb2c55c6faeb76f29a7"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageCards.xcframework.zip", checksum: "70c270c6b41dd9a0b9bd58a0135d271b031996e241d27a82d724ac939959cdbc"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageGeofence.xcframework.zip", checksum: "9910eb3ce00a215cbcbcc14e34d54de9681dc562dda70d637ad30216b8071761"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageRichNotification.xcframework.zip", checksum: "e1809a7ce326ff0201ec85315abb82ab19ffb3be6517011c24ee83008230a469"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageInbox.xcframework.zip", checksum: "a45a575ea333aedf5feb022e434203ec9010020c526e3e08a60f2fbf1e4af5c3"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/apple-sdk/releases/download/10.00.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "fddaa1f6c9f17aa47bcfc8b8102f0f2322a5e0e8332982d224c8734659991cd0"),
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

