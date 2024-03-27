// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pokeguess",
    platforms: [
                .macOS(.v12)
        ],
    dependencies: [
            .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.0.0"),
            .package(url: "https://github.com/realm/SwiftLint", from: "0.54.0"),
        ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "pokeguess",
            dependencies: [.product(name: "ArgumentParser", package: "swift-argument-parser")],
            resources: [.copy("data.json"), .copy("target.json"), .copy("history.json")],
            plugins: [.plugin(name: "SwiftLintPlugin", package: "SwiftLint")]
        ),
    ]
)
