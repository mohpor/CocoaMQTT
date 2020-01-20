// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "CocoaMQTT",
    products: [
        .library(name: "CocoaMQTT", targets: ["CocoaMQTT"])
    ],
    dependencies: [
        .package(url: "https://github.com/mohpor/CocoaAsyncSocket", .branch("master")),
    ],
    targets: [
        .target(
            name: "CocoaMQTT",
            path: "Source",
            dependencies: ["CocoaAsyncSocket"],
            exclude: ["CocoaMQTTWebSocket.swift"]            
        )
    ],
    swiftLanguageVersions: [.v5]
)
