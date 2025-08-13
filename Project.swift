import ProjectDescription

let project = Project(
    name: "HorizontalModularization",
    targets: [
        .target(
            name: "HorizontalModularization",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.HorizontalModularization",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["HorizontalModularization/Sources/**"],
            resources: ["HorizontalModularization/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "HorizontalModularizationTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.HorizontalModularizationTests",
            infoPlist: .default,
            sources: ["HorizontalModularization/Tests/**"],
            resources: [],
            dependencies: [.target(name: "HorizontalModularization")]
        ),
    ]
)
