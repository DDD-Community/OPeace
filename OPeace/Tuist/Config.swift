import ProjectDescription

let config = Config(
    compatibleXcodeVersions: ["15.2"],
    swiftVersion: "5.9.0",
    plugins: [
        .local(path: .relativeToManifest("../../Plugins/OPeace")),
    ]
)
