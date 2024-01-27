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
    name: "Network",
    bundleId: .appBundleID(name: ".Network"),
    product: .staticFramework,
    settings:  .settings(),
    dependencies: [
        
    ],
    sources: ["Sources/**"]
)
