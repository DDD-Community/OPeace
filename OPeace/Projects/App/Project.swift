//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 염성훈 on 1/17/24.
//

import Foundation

import ProjectDescription
import MyPlugin

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

let project = Project.makeAppModule(
    name: Project.Environment.appName,
    bundleId: .mainBundleID(),
    product: .app,
    settings: .appMainSetting,
    dependencies: [
        .feature,
        .core
    ],
    sources: ["Sources/**", "Resources/FontAsset/**"],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)
