//
//  Dependencies.swift
//  Config
//
//  Created by 염성훈 on 1/20/24.
//

import Foundation
import ProjectDescription


let swiftpackage = SwiftPackageManagerDependencies([
    .remote(url: "http://github.com/pointfreeco/swift-composable-architecture", requirement: .exact("1.8.0")),
    .remote(url: "https://github.com/Moya/Moya.git", requirement: .upToNextMinor(from: "15.0.0")),
    .remote(url: "https://github.com/Swinject/Swinject.git", requirement: .upToNextMajor(from: "2.8.4")),
    .remote(url: "https://github.com/uber/needle.git", requirement: .upToNextMinor(from: "0.24.0"))
])

let dependencie = Dependencies(
    swiftPackageManager: swiftpackage,
    platforms: [.iOS]
)
