//
//  Project+Environment.swift
//  MyPlugin
//
//  Created by 염성훈 on 1/17/24.
//

import Foundation
import ProjectDescription

public extension Project {
    public enum Environment {
        public static let appName = "OPeace"
        public static let appDevName = "OPeace-Dev"
        public static let organiaztionName = "Yeom"
        public static let organizationTeamID = "sunghun yeom"
        public static let deploymentTarget = DeploymentTarget.iOS(targetVersion: "17.0", devices: [.iphone, .ipad])
        public static let bundlePrefix = "com.Emo.OPeace"
        public static let appVersion = "1.0.0"
        public static let mainBundleId = "com.OPeace"
    }
}
