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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageAnalytics.xcframework.zip", checksum: "0890d65862e31522f756dd12d9d9edf3037e0dae5b0937099bd471d11317e8bb"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCore.xcframework.zip", checksum: "4cc58c40773cb43c5f9ef9004b3f51ff03f26f597bab00fbdb84b6a64461e1c6"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageMessaging.xcframework.zip", checksum: "4cc0b18c178a1025614e4aefa8d718002350309558e1cf88ed6063fa76d0a75c"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageObjCUtils.xcframework.zip", checksum: "c9d5385ea27755324932fa75f215b45399493079b190905aeaa79997572d23f7"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSDK.xcframework.zip", checksum: "6dad1fab316a9f5c2a950fe11432ecedd4a3d8792d418a567dd948bd764765c7"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSecurity.xcframework.zip", checksum: "ecb06d6d5c34f1eec5fda62e34c96605c07348de012ccd3588c4d55cdc63ab07"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "1917474e234c598d7d7e858dab777c2105718b08f925ea74b4acd20a4d582852"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInApps.xcframework.zip", checksum: "25bd9f24100134a9109372df4f60b645a317da10597d8cf3dd4504938bcd5e19"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCards.xcframework.zip", checksum: "8edb7fd88dc5afc9150c8a1bada3388fac2563e05363bea1976fffcd788a5bfe"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageGeofence.xcframework.zip", checksum: "a69ab7b09237a9942a6f75349faf6477bfc31b2c53b8c04884834a4d08f8f4ab"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRichNotification.xcframework.zip", checksum: "d24652f0a3689b1efd7e7bd45092fd6397c349b660819d7812def0b5244322ea"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInbox.xcframework.zip", checksum: "475011d052d5073adc0fa96e792bb5fd014f9b0ea7ff16e777f94e04ba3221bb"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "771d20a9b94198d2c944daa1ba1f378d51f89b9a829337fe71cf2165c91fd5e3"),
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

