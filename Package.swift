// swift-tools-version:5.7

/* Package.swift
 Version: 0.0.1

 Created by Mikhail Zhigulin of Novosibirsk.

 Unlicensed Free Software. LICENSE for details.

 Abstract:
 Package manifest for the App component.
*/

import PackageDescription

let package = Package(
    name: "T3Component",
    products: [
        .library(
            name: "T3Component",
            targets: ["T3Component"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "T3Component",
            dependencies: [],
            resources: [
                .copy("Data/Data.json")
            ]),
        .testTarget(
            name: "UnitTests",
            dependencies: ["T3Component"])
    ]
)
