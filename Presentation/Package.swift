// swift-tools-version:5.3.0

import PackageDescription

let package = Package(
    name: "Presentation",
    platforms: [.iOS(.v12],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Presentation",
            targets: ["Presentation"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Presentation",
            dependencies: []),
        .testTarget(
            name: "PresentationTests",
            dependencies: ["Presentation"])
    ]
)
