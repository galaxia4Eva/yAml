// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "yAml",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "yAml", targets: ["yAml"])
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-parsing.git", from: "0.12.1"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "12.0.1")
    ],
    targets: [
        .target(name: "yAml", dependencies: [.product(name: "Parsing", package: "swift-parsing")]),
        .testTarget(name: "yAmlTests", dependencies: ["yAml", "Nimble"])
    ]
)
