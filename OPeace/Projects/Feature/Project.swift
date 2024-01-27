//
//  Project.swift
//  Config
//
//  Created by 염성훈 on 1/24/24.
//

import Foundation
import ProjectDescription
import MyPlugin

let localHelper = LocalHelper(name: "MyPlugin")

let project = Project.makeAppModule(
    name: "Feature",
    bundleId: .appBundleID(name: ".Feature"),
    product: .staticFramework,
    settings:  .settings(),
    dependencies: [
        .domain,
        .core
    ],
    sources: ["Sources/**"]
)
