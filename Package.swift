// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

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
            .binaryTarget(
                name: "MoEngageAnalytics",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageAnalytics.xcframework.zip",
                checksum: "6ce3de0db2257d9baf1f654e2f59d83ebb4262a0147829ef73ca278bb7e74e97"
            ),
            .binaryTarget(
                name: "MoEngageCore",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageCore.xcframework.zip",
                checksum: "d94a178d8faa71eaa4bec4537badce6335338e0e620e3fae885bc8fe59e785d0"
            ),
            .binaryTarget(
                name: "MoEngageMessaging",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageMessaging.xcframework.zip",
                checksum: "5b0c406b33779ec3c4d09eb3d4361d9b08963601975214de370b264a4a82d4a7"
            ),
            .binaryTarget(
                name: "MoEngageObjCUtils",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageObjCUtils.xcframework.zip",
                checksum: "9976c86489aecfc435dd3e22e0505e5bf00156e87e65c352868f7e9f7a699f10"
            ),
            .binaryTarget(
                name: "MoEngageSDK",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageSDK.xcframework.zip",
                checksum: "5ef464aafa69bd36d4e3dc9a44821f9f2cbc2190ce943aa1042929554dc20ce5"
            ),
            .binaryTarget(
                name: "MoEngageSecurity",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageSecurity.xcframework.zip",
                checksum: "245413c1789cbd94e618dfd43eb86a32eee3ea8f3b3f00e3d08b57fb6cfab03a"
            ),
        ]
    ),
    .init(
        name: "MoEngageTriggerEvaluator",
        targets: [
            .binaryTarget(
                name: "MoEngageTriggerEvaluator",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageTriggerEvaluator.xcframework.zip",
                checksum: "bed34765d1f80e7d8a9d2210b6212e118360f68f1481c4929d1db2c3ae78c9a7"
            ),
            .target(name: "MoEngageTriggerEvaluatorSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInApps",
        targets: [
            .binaryTarget(
                name: "MoEngageInApps",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageInApps.xcframework.zip",
                checksum: "98a44e1d673f228108c6777c02a42d49dfbc01f7eca72f4e44819ac4959cef82"
            ),
            .target(name: "MoEngageInAppSPM", dependencies: .additional(dependency: "MoEngageTriggerEvaluator")),
        ]
    ),
    .init(
        name: "MoEngageCards",
        targets: [
            .binaryTarget(
                name: "MoEngageCards",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageCards.xcframework.zip",
                checksum: "447ab6d0e5130c5532e8381352951fde652bbcf1a780ae5660a78de40b91b0ed"
            ),
            .target(name: "MoEngageCardsSPM", dependencies: .default),
        ]
    ),
    // tvOS unsupported products
    .init(
        name: "MoEngageGeofence",
        targets: [
            .binaryTarget(
                name: "MoEngageGeofence",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageGeofence.xcframework.zip",
                checksum: "502768c5c8863fd127c80d1d6bde93276566c65aab2a3cc1f739e168ef41cf47"
            ),
            .target(name: "MoEngageGeofenceSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageRichNotification",
        targets: [
            .binaryTarget(
                name: "MoEngageRichNotification",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageRichNotification.xcframework.zip",
                checksum: "b4c500d73880e604f3e6af820046d91a96cf7ad9bf578190bfb1103827c54982"
            ),
            .target(name: "MoEngageRichNotificationSPM", dependencies: .default),
        ]
    ),
    .init(
        name: "MoEngageInbox",
        targets: [
            .binaryTarget(
                name: "MoEngageInbox",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageInbox.xcframework.zip",
                checksum: "1ec708f1b14a20239abf0462960b88ea8ae9fc1906e3494704f1111be7026a89"
            ),
            .target(name: "MoEngageInboxSPM", dependencies: .additional(dependency: "MoEngageRichNotification")),
        ]
    ),
    .init(
        name: "MoEngageRealTimeTrigger",
        targets: [
            .binaryTarget(
                name: "MoEngageRealTimeTrigger",
                url: "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/MoEngageRealTimeTrigger.xcframework.zip",
                checksum: "c9133b28b19e10fe0e38414a45e0953e888149d233b8fbfff06569fd261f0923"
            ),
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
