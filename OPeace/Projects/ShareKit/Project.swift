//
//  Project.swift
//  Config
//
//  Created by 염성훈 on 1/27/24.
//


import Foundation
import ProjectDescription
import MyPlugin

let project = Project.makeAppModule(
    name: "ShareKit",
    bundleId: .appBundleID(name: ".ShareKit"),
    product: .staticFramework,
    settings:  .settings(),
    dependencies: [
        .SPM.CcomposableArchitecture,
        .external(name: "Moya")
    ],
    sources: ["Sources/**"]
)
