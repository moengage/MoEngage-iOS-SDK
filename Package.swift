// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
    platforms: [.iOS(.v11), .tvOS(.v11)],
    products: [], dependencies: [], targets: [],
    swiftLanguageVersions: [.v5]
)

let version = "9.17.0"
let targetMap = [
    "MoEngageAnalytics": "2f670eabaab73f1b3eec5c72597c03e8611defb96fbd95de02354cbd97b01c1e",
    "MoEngageCore": "6e2887da33b662ecfd3212cc9ce2a2172fe162da33ec2f8eacc5788474eeee30",
    "MoEngageMessaging": "df5805c84d925532bc9cdbede7bebdc073ce0292cb49f93c89ba177413e4d800",
    "MoEngageObjCUtils": "a39a9d4f748800b932e8ef472f4951745338cc4ea06c5f21aac0a1ed5b1093b5",
    "MoEngageSDK": "ec7535fde932de6857233623f21317a706dd62bfdc42b2612621847e79cf33f8",
    "MoEngageSecurity": "8f2a9a7bd73dae604c7eef5fec7f02828a8cfc0df457bbc40dcc28554766acfd",
]

for (target, checksum) in targetMap {
    let url = "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/\(version)/\(target).xcframework.zip"
    package.targets.append(.binaryTarget(name: target, url: url, checksum: checksum))
}

package.products.append(
    .library(name: package.name, targets: Array(targetMap.keys))
)
