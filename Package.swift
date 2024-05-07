// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Open3dApp",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Open3dApp",
            targets: [
                "Open3dApp",
                "Assimp",
                "JPEG",
                "jsoncpp",
                "libOpen3D_3rdparty_liblzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "png",
                "TBB",
                "ZeroMQ",
            ]),
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/Assimp.xcframework.zip", checksum: "1363f4ac6659a7585c58c7e0b7e3b5f02ee024fff23d55863e64aabae5fd3573"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/JPEG.xcframework.zip", checksum: "5cf9d29189194f2e09573846219aa0768c6e211fb781a1a86c197b1ce85513c9"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/jsoncpp.xcframework.zip", checksum: "10354d6958f689fe86f25a8a31a2362624697f16276c986470cf48f27a4ed193"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "0cc79bf78283e86f8d48955feb0030d64b9a4b4c0248be5264be19609aeadb21"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "8a85ec4ae146fcf4c89f779c792bc055c52c1ffb269ba01a489702c0f3874874"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "9bc7d2cfa20d49530c90ee7b917ef225dacebb3d86d96f767a6e7afe4f81318c"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "8ca55269e70855f21cec6ce0a6528b3ed7482630da0cff4a7717c2232c725df7"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D.a.xcframework.zip", checksum: "700b15b0c3502b608221cfaa48c34132d3bedcbcafa6f0cdcc417a2a10e1f0cd"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/libOpen3D.a.xcframework.zip", checksum: "700b15b0c3502b608221cfaa48c34132d3bedcbcafa6f0cdcc417a2a10e1f0cd"),
        .binaryTarget(name: "ZeroMQ", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/ZeroMQ.zip", checksum: "efbc1615a752ab285de3cf29cab6ff451e551116f410703955cf03e3bc7f21e1"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240422130123/TBB.xcframework.zip", checksum: "bf277779cb349c277bdd9bde7284988661c845f91aa627bde8fb97e2203eed57"),
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LinkOpen3D",
            dependencies: [
                "Assimp",
                "JPEG",
                "jsoncpp",
                "libOpen3D_3rdparty_liblzf.a",
                "libOpen3D_3rdparty_qhull_r.a",
                "libOpen3D_3rdparty_qhullcpp.a",
                "libOpen3D_3rdparty_rply.a",
                "libOpen3D.a",
                "png",
                "TBB",
                "ZeroMQ",
            ],
            linkerSettings: [
                .linkedLibrary("stdc++"),
            ]
            ),
        .target(
            name: "Open3dApp",
            dependencies: ["LinkOpen3D"]
            ),
        .testTarget(
            name: "Open3dAppTests",
            dependencies: ["Open3dApp"]),
    ]
)
