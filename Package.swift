// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
    platforms: [.iOS(.v11), .tvOS(.v11)],
    products: [], dependencies: [], targets: [],
    swiftLanguageVersions: [.v5]
)

let version = "9.17.5"
let targetMap = [
    "MoEngageAnalytics": "01cbf142cbc2869d38be797e523731316d2701c718b14c22cdc097a1c22b12d2",
    "MoEngageCore": "7ec047a75bcccead3ce01d0365c9b896db47f62add55834d4a392b99a07e4854",
    "MoEngageMessaging": "7680f297ee37df195295edb3956d0d8c346148286122107a56972b7f2fffc809",
    "MoEngageObjCUtils": "d9aaf5a27c7a554b06cc9821cfde0dc14c704a24459111015a7d84b6179bdb75",
    "MoEngageSDK": "3470ace3bf75e7c9f08a41dec57a0270b43fc516b532e9bb368feceb00444c47",
    "MoEngageSecurity": "a33963bd41a51cc4ae8ca92360424ec0f89bd47d441f773163eadb7dcb971ea2",
]

for (target, checksum) in targetMap {
    let url = "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/\(version)/\(target).xcframework.zip"
    package.targets.append(.binaryTarget(name: target, url: url, checksum: checksum))
}

package.products.append(
    .library(name: package.name, targets: Array(targetMap.keys))
)
