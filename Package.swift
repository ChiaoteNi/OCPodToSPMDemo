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
    dependencies: [],
    targets: [
        .target(
            name: "Internals",
            path: "OCPodToSPMDemo/Internals"
        ),
        .target(
            name: "OCPodToSPMDemo",
            dependencies: [
                .target(name: "Internals")
            ],
            path: "OCPodToSPMDemo/Classes"
        )
    ]
)
