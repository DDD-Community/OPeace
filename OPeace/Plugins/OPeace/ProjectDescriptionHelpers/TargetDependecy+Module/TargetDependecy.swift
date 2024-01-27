//
//  TargetDependecy.swift
//  MyPlugin
//
//  Created by 염성훈 on 1/24/24.
//

import Foundation
import ProjectDescription
import MyPlugin

public extension TargetDependency {
    static var app: Self {
        return .project(
            target: ModulePath.App.name,
            path: .app)
    }
}

public extension TargetDependency {
    static var feature: Self {
        return .project(target: ModulePath.Feature.name, path: .Feature
        )
    }
}

public extension TargetDependency {
    static var core: Self {
        return .project(target: ModulePath.Core.name, path: .Core)
    }
}

public extension TargetDependency {
    static var network: Self {
        return .project(target: ModulePath.Network.name, path: .Network)
    }
}

public extension TargetDependency {
    static var shareKit: Self {
        return .project(target: ModulePath.ShareKit.name, path: .ShareKit)
    }
}

public extension TargetDependency {
    static var domain: Self {
        return .project(target: ModulePath.Domain.name, path: .Domain)
    }
}
