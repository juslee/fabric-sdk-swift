import PackageDescription

let package = Package(
    name: "fabric-sdk-swift",
    dependencies: [
        .Package(url: "https://github.com/apple/swift-protobuf.git", Version(0,9,27))
    ]
)
