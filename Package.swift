// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HakoShared",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "HakoShared",
            targets: ["HakoShared"]
        ),
    ],
    targets: [
        .target(name: "HakoShared"),
        .testTarget(
            name: "HakoSharedTests",
            dependencies: ["HakoShared"]
        ),
    ]
)
