// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OCPodToSPMDemo",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OCPodToSPMDemo",
            targets: ["OCPodToSPMDemo"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ChiaoteNi/NTPClient.git", from: "1.0.4"),
    ],
    targets: [
        .target(
            name: "Internals",
            dependencies: [
                .product(name: "OCNTPClock", package: "NTPClient")
            ],
            path: "OCPodToSPMDemo/Internals"
        ),
        .target(
            name: "OCPodToSPMDemo",
            dependencies: [
                .target(name: "Internals")
            ],
            path: "OCPodToSPMDemo/Classes"
        ),
        .testTarget(
            name: "OCPodToSPMDemoTests",
            dependencies: [
                .target(name: "OCPodToSPMDemo")
            ],
            path: "OCPodToSPMDemoTests"
        )
    ]
)
