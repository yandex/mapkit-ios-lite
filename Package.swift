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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.17.2-lite.framework.zip",
            checksum: "c87f5179bb5fb00b4f75e0e8d44c2cd93187a9ead5f57435051252e2f752701c"
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
