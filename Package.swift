// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "LeetCode",
    targets: [
        .target(
            name: "LeetCode",
            path: "Sources/LeetCode"
        ),
        .testTarget(
            name: "LeetCodeTests",
            dependencies: ["LeetCode"],
            path: "Tests/LeetCodeTests"
        ),
    ]
)
