// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Color-from-hex",
    platforms: [.macOS(.v10_15), .iOS(.v13), .watchOS(.v6), .tvOS(.v13)],
    products: [
        .library(
            name: "Color-from-hex",
            targets: ["Color-from-hex"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/StandardHexadecimalColorCode-package",
            .upToNextMinor(from: "0.1.1")
        )
    ],
    targets: [
        .target(
            name: "Color-from-hex",
            dependencies: [
                .product(
                    name: "StandardHexadecimalColorCode-module",
                    package: "StandardHexadecimalColorCode-package"
                ),
            ]
        ),
        .testTarget(
            name: "Color-from-hex-tests",
            dependencies: ["Color-from-hex"]
        ),
    ]
)
