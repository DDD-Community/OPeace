//
//  Modules.swift
//  MyPlugin
//
//  Created by 염성훈 on 1/24/24.
//

import Foundation
import ProjectDescription

public enum ModulePath {
    case Feature
    case ShareKit
    case Core
    case Network
    case Domain
}

public extension ModulePath {
    var name: String {
        switch self {
        case .Feature:
            return "Feature"
        case .ShareKit:
            return "ShareKit"
        case .Core:
            return "Core"
        case .Network:
            return "Network"
        case .Domain:
            return "Domain"
        }
    }
    
    
    enum App: String, CaseIterable {
        case iOS
        case iPad
        
        public static let name: String = "App"
    }
}
