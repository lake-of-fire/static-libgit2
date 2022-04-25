// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "static-libgit2",
    platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "static-libgit2",
            targets: ["Clibgit2", "LinkerConfigurator"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
      .binaryTarget(name: "Clibgit2", path: "Clibgit2.xcframework"),
      .target(name: "LinkerConfigurator", linkerSettings: [
        .linkedLibrary("z"),
          .linkedLibrary("iconv")
      ])
    ]
)
