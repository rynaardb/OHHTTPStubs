// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "OHHTTPStubs",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "OHHTTPStubs",
            targets: [
                "OHHTTPStubs",
            ]
        ),
        .library(
            name: "OHHTTPStubsSwift",
            targets: [
                "OHHTTPStubs",
                "OHHTTPStubsSwift"
            ]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "OHHTTPStubs",
            dependencies: []),
        .testTarget(
            name: "OHHTTPStubsTests",
            dependencies: ["OHHTTPStubs"]),
        .target(
            name: "OHHTTPStubsSwift",
            dependencies: ["OHHTTPStubs"]),
        .testTarget(
            name: "OHHTTPStubsSwiftTests",
            dependencies: ["OHHTTPStubsSwift", "OHHTTPStubs"]
        )
    ]
)
