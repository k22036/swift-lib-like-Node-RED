// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-lib-like-Node-RED",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "swift-lib-like-Node-RED",
            targets: ["swift-lib-like-Node-RED"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-async-algorithms.git", from: "1.0.4"),
        .package(url: "https://github.com/swift-server-community/mqtt-nio.git", from: "2.12.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "swift-lib-like-Node-RED",
            dependencies: [
                .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),
                .product(name: "MQTTNIO", package: "mqtt-nio"),
            ])
        //        .testTarget(
        //            name: "swift-lib-like-Node-REDTests",
        //            dependencies: ["swift-lib-like-Node-RED"]
        //        ),
    ]
)
