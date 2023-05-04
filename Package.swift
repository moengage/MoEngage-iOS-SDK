// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoEngage-iOS-SDK",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MoEngage-iOS-SDK",
            targets: ["MoEngageCore","MoEngageSDK","MoEngageAnalytics","MoEngageMessaging","MoEngageObjCUtils", "MoEngageSecurity"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(name: "MoEngageSecurity", path: "./Frameworks/MoEngageSecurity.xcframework"),
        
        .binaryTarget(name: "MoEngageCore", path: "./Frameworks/MoEngageCore.xcframework"),
        
        .binaryTarget(name: "MoEngageAnalytics", path: "./Frameworks/MoEngageAnalytics.xcframework"),
        
        .binaryTarget(name: "MoEngageMessaging", path: "./Frameworks/MoEngageMessaging.xcframework"),
        
        .binaryTarget(name: "MoEngageObjCUtils", path: "./Frameworks/MoEngageObjCUtils.xcframework"),

        .binaryTarget(name: "MoEngageSDK", path: "./Frameworks/MoEngageSDK.xcframework")
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
    ]
)
