//
//  Proejct.swift
//  Config
//
//  Created by 염성훈 on 2/17/24.
//


import Foundation
import ProjectDescription
import MyPlugin

let project = Project.makeAppModule(
    name: "DesignSystemKit",
    bundleId: .appBundleID(name: ".DesignSystemKit"),
    product: .staticFramework,
    settings:  .settings(),
    dependencies: [
        
    ],
    sources: ["Sources/**"],
    resources: ["Resources/**"]
)
