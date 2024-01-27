//
//  Extension+TargetDependecy.swift
//  MyPlugin
//
//  Created by 염성훈 on 1/20/24.
//

import Foundation
import ProjectDescription

public extension TargetDependency {
    enum SPM {}
}

public extension TargetDependency.SPM {
    static let CcomposableArchitecture: TargetDependency = .external(name: "ComposableArchitecture", condition: .none)
    static let Moya: TargetDependency = .external(name: "Moya", condition: .none)
    static let CombineMoya: TargetDependency = .external(name: "CombineMoya", condition: .none)
}
