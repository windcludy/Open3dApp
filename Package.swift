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
                "LinkOpen3D",
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
                // "libvtkCommonComputationalGeometry",
                "libvtkCommonDataModel",
                "libvtkCommonMath",
                "libvtkCommonExecutionModel",
                "libvtkCommonMisc",
                "libvtkCommonSystem",
                "libvtkCommonCore",
                "libvtkCommonTransforms",
                "libvtkFiltersCore",
                "libvtkFiltersGeneral",
                "libvtkFiltersModeling",
                "libvtkFiltersSources",
                "libvtkfmt",
                // "libvtkkissfft",
                "libvtkpugixml",
                "libvtksys",
                "libUVAtlas",
            ]),
    ],
    targets: [
        .binaryTarget(name: "Assimp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/Assimp.xcframework.zip", checksum: "8cce1b7c57529baee1892073a5336f51d8b8668b8d047c85543973eed5ac34b0"),
        .binaryTarget(name: "JPEG", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/JPEG.xcframework.zip", checksum: "af45b37f2df1c02c5ec9ba43fb095a1fb78cfcc8a83040b586d881e6f1a361d3"),
        .binaryTarget(name: "jsoncpp", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/jsoncpp.xcframework.zip", checksum: "185ab220b3d87e663a5f195613ec0a4b930e3ead9bebbdad26d791ad6cfb679a"),
        .binaryTarget(name: "libOpen3D_3rdparty_liblzf.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/libOpen3D_3rdparty_liblzf.a.xcframework.zip", checksum: "49142abe28f287e115ff9c9ce0106a54e26f3a8b73a831fbddafbffd0b84799f"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhull_r.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/libOpen3D_3rdparty_qhull_r.a.xcframework.zip", checksum: "487629cb4157188fe13818f242ab2fc4aca3ef9fba2adaf5a1e9960f3a4bfbe8"),
        .binaryTarget(name: "libOpen3D_3rdparty_qhullcpp.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/libOpen3D_3rdparty_qhullcpp.a.xcframework.zip", checksum: "9136ec00c66e0430f43c37fe92a072f48f6a834838897007fb81f8fbfdcd6ea8"),
        .binaryTarget(name: "libOpen3D_3rdparty_rply.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/libOpen3D_3rdparty_rply.a.xcframework.zip", checksum: "813c750d9039cf6cfabac661a02f7d323ebbfde8bc205dfa05ceeef9fad82fa4"),
        .binaryTarget(name: "libOpen3D.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/libOpen3D.a.xcframework.zip", checksum: "8d4b18e678a999a6464f362fc5580b8d0266802c5d494f7515bbcd64c7c7daaa"),
        .binaryTarget(name: "png", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/png.xcframework.zip", checksum: "4fdfa87e0bb85a9a468a5113fe55dc8af84629c23bf0123a533c79f55ecda11c"),
        // .binaryTarget(name: "pybind.a", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/pybind.a.xcframework.zip", checksum: "bab354fe14b7d947e0742b36c591e2721dce6b8f2c4f49615e747b38dd5cc1fc"),
        .binaryTarget(name: "TBB", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/TBB.xcframework.zip", checksum: "bc7b737f45336da871a9a2ca4e19d1364eaa1838f05715d9a8b84f99ed9809c9"),
        // .binaryTarget(name: "libvtkCommonComputationalGeometry", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_Common_Computational.xcframework.zip", checksum: "b94bef82b1d584d21cc45242ba6118c45e0d3b0e008073ef3b696d74fd98d752"),
        .binaryTarget(name: "libvtkCommonDataModel", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_common_data_model.xcframework.zip", checksum: "ef129eb16d90e72fd31b7e5f0c8e0730b3dc9657bf2d9e60ead1340745c76a79"),
        .binaryTarget(name: "libvtkCommonMath", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_common_math.xcframework.zip", checksum: "86ddb834e98cd1b7ff06f1bec1a2a97958d5794f76149f80b5ca91e57d6d288e"),
        .binaryTarget(name: "libvtkCommonExecutionModel", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_common_execution.xcframework.zip", checksum: "8394be8abe61f52ec6e320315dd3c0ffcc064a26a783149475ea42349637af29"),
        .binaryTarget(name: "libvtkCommonMisc", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_common_misc.xcframework.zip", checksum: "1b2bda6cc52f51c0f3164b0b8458eb4aabe7fd4318ca9430e83e01c2b5cb9ddc"),
        .binaryTarget(name: "libvtkCommonSystem", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_common_sys.xcframework.zip", checksum: "6928ec16d353529882f3707f5e0dd3c7332108c841964a649f511538b1550007"),
        .binaryTarget(name: "libvtkCommonCore", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_common_core.xcframework.zip", checksum: "bb11ffc8dd71d81fb6d099b8daeaa7f1d7ddce301fac4f62fc73a6bfeb120e66"),
        .binaryTarget(name: "libvtkCommonTransforms", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_common_trans.xcframework.zip", checksum: "07a9d84a33585600e7ea1fc74d615baddc35fff004b393d8b696fd6851780984"),
        
        .binaryTarget(name: "libvtkFiltersCore", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_filte_core.xcframework.zip", checksum: "0183684a495c2e998c3e1a2135a4a203e945d7dae648564bca1af210f021e516"),
        .binaryTarget(name: "libvtkFiltersGeneral", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_filte_general.xcframework.zip", checksum: "0d05a7623cc6221fe5d283dc5324a617aa16a9789d897e0ba10e804d4afd3275"),
        .binaryTarget(name: "libvtkFiltersModeling", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_filte_model.xcframework.zip", checksum: "75997f9ce5d32c4defc9672db0c86b2a82c81aaa0a77c1e9b5e408fc60b419c0"),
        .binaryTarget(name: "libvtkFiltersSources", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_filte_src.xcframework.zip", checksum: "733d0acd6d7686e8e8f0c73921623fa5e1e615af82f80f887da9d42ad59bf974"),
        .binaryTarget(name: "libvtkfmt", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_fmt.xcframework.zip", checksum: "a5d3419424752e522fa38821b433095781eedfc8be7815799341de2e4ba13a9b"),
        // .binaryTarget(name: "libvtkkissfft", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_kiss_fft.xcframework.zip", checksum: "67049572ec138fa8abd163530651b48c7726be01694360aca78f80cd4779fb7d"),
        .binaryTarget(name: "libvtkpugixml", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_plugin_xml.xcframework.zip", checksum: "0565f9c8fdec6cfb534ad0722b4f0873cf2af8d3fee46798276689a3c578f070"),
        .binaryTarget(name: "libvtksys", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/VTK_sys.xcframework.zip", checksum: "f1c28c4bdbe61a89de9cca63e08ee3443ae758da4e42f14f278dfe29cb50aa72"),
        .binaryTarget(name: "libUVAtlas", url: "https://github.com/windcludy/Open3D-iOS/releases/download/0.0.20240521132206/UVAtlas.xcframework.zip", checksum: "a021bf928bfbc924837dc8762821119381ea99bd927b664436c290f2389e84aa"),
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
                // "pybind.a",
                "TBB",
                // "BLAS-LAPACK-AppStore-Workaround",
                // "libvtkCommonComputationalGeometry",
                "libvtkCommonDataModel",
                "libvtkCommonMath",
                "libvtkCommonExecutionModel",
                "libvtkCommonMisc",
                "libvtkCommonSystem",
                "libvtkCommonCore",
                "libvtkCommonTransforms",
                "libvtkFiltersCore",
                "libvtkFiltersGeneral",
                "libvtkFiltersModeling",
                "libvtkFiltersSources",
                "libvtkfmt",
                // "libvtkkissfft",
                "libvtkpugixml",
                "libvtksys",
                "libUVAtlas",
            ],
            // linkerSettings: [
            //     .linkedLibrary("stdc++"),
            // ]
            // ,
            path: "Sources/LinkOpen3D",
            cxxSettings: [
                .headerSearchPath("include")
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
