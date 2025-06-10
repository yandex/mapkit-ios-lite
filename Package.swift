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
            url: "https://maps-ios-pods-public.s3.yandex.net/YandexMapsMobile-4.17.0-lite.framework.zip",
            checksum: "f8bb4b829f7d035ea054109e6dc2445c8417517722754dae416f54cdace39c46"
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
