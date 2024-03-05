// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HakoShared",
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
