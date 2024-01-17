//
//  Workspace.swift
//  ProjectDescriptionHelpers
//
//  Created by 염성훈 on 1/17/24.
//

import Foundation
import ProjectDescription
import MyPlugin

let workspace = Workspace(
name: Project.Environment.appName,
projects: [
    "Projects/**"
])
