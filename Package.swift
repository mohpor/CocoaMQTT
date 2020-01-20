// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "CocoaMQTT",
    products: [
        .library(name: "CocoaMQTT", targets: ["CocoaMQTT"])
    ],
    targets: [
        .target(
            name: "CocoaMQTT",
            path: "Source",
            exclude: ["CocoaMQTTWebSocket.swift"]            
        )
    ],
    swiftLanguageVersions: [.v5]
)
