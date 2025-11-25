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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.26.0-lite.framework.zip",
            checksum: "66e0fe55af5871ddcca8dceba1e992c901960f60ed4b403a0a1a06c6275f0b05"
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
                .linkedFramework("NetworkExtension"),
                .linkedLibrary("resolv"),
                .linkedLibrary("c++"),
            ]

        )
    ]
)
