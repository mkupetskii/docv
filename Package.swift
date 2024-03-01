// swift-tools-version: 5.8.0
import PackageDescription

let package = Package(
    name: "TruliooDocV",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "TruliooDocV",
            targets: ["TruliooDocV", "TruliooCore", "TruliooSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.3.3"),
    ],
    targets: [
        .target(
            name: "TruliooDocV",
            dependencies: [
                .product(name: "Lottie", package: "lottie-spm")
            ]
        ),
        .binaryTarget(
            name: "TruliooCore",
            path: "./TruliooCore.xcframework"
        ),
        .binaryTarget(
            name: "TruliooSDK",
            path: "./TruliooSDK.xcframework"
        )
    ]
)
