// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "YandexMapsMobileLite",
    defaultLocalization: "en",
    platforms: [.iOS("12.0")],
    products: [
        .library(
            name: "YandexMapsMobileLite",
            type: .static,
            targets: [
                "YandexMapsMobileLite",
                "YandexMapsMobileLiteResources"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "YandexMapsMobileLite",
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.23.0-lite.framework.zip",
            checksum: "56fae2af2ed2720142e9eab6eebeb9d4c19d3095bf76999b66a67d34b88d3661"
        ),
        .target(
            name: "YandexMapsMobileLiteResources",
            path: "Resources",
            linkerSettings: [
                .linkedFramework("CoreFoundation"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("UIKit"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("DeviceCheck"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
