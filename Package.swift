// swift-tools-version: 5.8

///
import PackageDescription

///
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
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/StandardHexadecimalColorCode-module",
            "0.1.0" ..< "0.2.0"
        )
    ],
    targets: [
        .target(
            name: "Color-from-hex",
            dependencies: [
                "StandardHexadecimalColorCode-module",
            ]
        ),
        .testTarget(
            name: "Color-from-hex-tests",
            dependencies: ["Color-from-hex"]
        ),
    ]
)
