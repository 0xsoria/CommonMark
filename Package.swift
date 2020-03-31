// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CommonMarkExample",
    dependencies: [],
    targets: [
        .target(
            name: "CommonMarkExample",
            dependencies: ["Ccmark"]),
            
        .systemLibrary(
            name: "Ccmark",
            pkgConfig: "libcmark",
            providers: [ .brew(["cmark"]), .apt(["cmark"])
            ]),
    ]
)
