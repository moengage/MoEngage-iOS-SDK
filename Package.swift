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
            .binaryTarget(name: "MoEngageAnalytics", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageAnalytics.xcframework.zip", checksum: "3284d3cb985bb9d0b99690b7ce8a27d7fd5bea3252b22721680a2e5491191ed3"),
            .binaryTarget(name: "MoEngageCore", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCore.xcframework.zip", checksum: "ff1aeaa083f5e3f8fc4478e4c8d47179c1964c26e59099a6395ecc0c137c096c"),
            .binaryTarget(name: "MoEngageMessaging", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageMessaging.xcframework.zip", checksum: "5b67ad1adb8ca7b20ae94e7e3c839fe3990369d2eff37fcb788433b22aacadb7"),
            .binaryTarget(name: "MoEngageObjCUtils", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageObjCUtils.xcframework.zip", checksum: "0b67de183dd4d12dff0e113f48c1862d98a33d635fe36df4efb397b451d008a5"),
            .binaryTarget(name: "MoEngageSDK", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSDK.xcframework.zip", checksum: "6ac0df630ff2404900fe6b6b5c3c211a770fb31b57da16905d4c57b939bad3e3"),
            .binaryTarget(name: "MoEngageSecurity", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageSecurity.xcframework.zip", checksum: "52eb6e4c62d531ef095e29830105c810186e26de068a67ddc51a590d9327718f"),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(name: "MoEngageTriggerEvaluator", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageTriggerEvaluator.xcframework.zip", checksum: "3c6ebf4f220646121979d053adca6825c25dceb78b90aeab7dcfd4da1ad8feda"),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(name: "MoEngageInApps", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInApps.xcframework.zip", checksum: "5e5660d471c42212673f65186749bc78c401542f051a04a1096a00848c8093d4"),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(name: "MoEngageCards", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageCards.xcframework.zip", checksum: "8f85016c06889c6844768507250cdab17f91434ce6ca67dcca333d6403604e5b"),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(name: "MoEngageGeofence", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageGeofence.xcframework.zip", checksum: "5e8055259ec10c406b0aef545b7f0a2306c5915b90dc81f4ae4a76b06f9d5624"),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(name: "MoEngageRichNotification", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRichNotification.xcframework.zip", checksum: "9b6436d5f5725dc3e7ecdc76b1234ac8baab775f979cccfc98f36621a8b163a4"),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(name: "MoEngageInbox", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageInbox.xcframework.zip", checksum: "e0021a8ff0e642a764843095cd07cd279ab612cbf994d7c2637f1fe5d3731222"),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(name: "MoEngageRealTimeTrigger", url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.18.0/MoEngageRealTimeTrigger.xcframework.zip", checksum: "3c6b86d9d87d20d5dc54bab56859b074e184cdf7a56a03a9f50f330a99e36cf2"),
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

