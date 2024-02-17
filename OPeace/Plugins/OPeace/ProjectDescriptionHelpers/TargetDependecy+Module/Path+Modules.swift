//
//  Path+Modules.swift
//  MyPlugin
//
//  Created by 염성훈 on 1/27/24.
//

import Foundation
import ProjectDescription

public extension ProjectDescription.Path {
    static var app: Self {
        return .relativeToRoot("Projects/\(ModulePath.App.name)")
    }
}

public extension ProjectDescription.Path {
    static var Feature: Self {
        return .relativeToRoot("Projects/\(ModulePath.Feature.name)")
    }
}

public extension ProjectDescription.Path {
    static var Core: Self {
        return .relativeToRoot("Projects/\(ModulePath.Core.name)")
    }
}

public extension ProjectDescription.Path {
    static var Network: Self {
        return .relativeToRoot("Projects/\(ModulePath.Network.name)")
    }
}

public extension ProjectDescription.Path {
    static var ShareKit: Self {
        return .relativeToRoot("Projects/\(ModulePath.ShareKit.name)")
    }
    
    static var DesignSystemKit: Self {
        return .relativeToRoot("Projects/\(ModulePath.DesignSystemKit.name)")
    }
}

public extension ProjectDescription.Path {
    static var Domain: Self {
        return .relativeToRoot("Projects/\(ModulePath.Domain.name)")
    }
}
