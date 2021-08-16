// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIGIF",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SwiftUIGIF",
            targets: ["SwiftUIGIF"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftUIGIF",
            dependencies: []),
    ]
)
