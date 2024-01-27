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
    name: "Core",
    bundleId: .appBundleID(name: ".Core"),
    product: .staticFramework,
    settings:  .settings(),
    dependencies: [
        .network,
        .shareKit
    ],
    sources: ["Sources/**"]
)
