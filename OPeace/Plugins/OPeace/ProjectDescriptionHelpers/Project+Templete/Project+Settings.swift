//
//  Project+Settings.swift
//  MyPlugin
//
//  Created by 염성훈 on 1/17/24.
//

import Foundation
import ProjectDescription

extension Settings {
    public static let appMainSetting: Settings = .settings(
        base: [ "PRODUCT_NAME": "\(Project.Environment.appName)",
                "CFBundleDisplayName" : "\(Project.Environment.appName)",
                "MARKETING_VERSION": .string(.appVersion()),
                "AS_AUTHENTICATION_SERVICES_ENABLED": "YES",
                "PUSH_NOTIFICATIONS_ENABLED":"YES",
                "ENABLE_BACKGROUND_MODES" : "YES",
                "BACKGROUND_MODES" : "remote-notification",
                "CURRENT_PROJECT_VERSION": .string(.appBuildVersion()),
                "CODE_SIGN_IDENTITY": "iPhone Developer",
                "CODE_SIGN_STYLE": "Automatic",
                "DEVELOPMENT_TEAM": "\(Project.Environment.organizationTeamID)",
                "VERSIONING_SYSTEM": "apple-generic",
                "DEBUG_INFORMATION_FORMAT": "DWARF with dSYM File",
                "DEVELOPMENT_ASSET_PATH" : "\"Resources/Preview Content\""]
        ,configurations: [
            .debug(name: .debug, settings: [
                "PRODUCT_NAME" : "\(Project.Environment.appName)",
                "DISPLAY_NAME" : "\(Project.Environment.appName)",
//                "PROVISIONING_PROFILE_SPECIFIER": "BeatMaster", //개인 사용자에게 팀 권한을 줄 떄 사용한다.
                "OTHER_LDFLAGS": [
                      "-all_load", // Set the strip style to non-global symbols
                ],
                "STRIP_STYLE": [
                    "non-global"
                ],
            ]),
            .debug(name: "Dev", settings: [
                "PRODUCT_NAME" : "\(Project.Environment.appDevName)",
                "DISPLAY_NAME" : "\(Project.Environment.appDevName)",
//                "PROVISIONING_PROFILE_SPECIFIER": "BeatMaster",
                "OTHER_LDFLAGS": [
                     "-all_load", // Set the strip style to non-global symbols
                ],
                "STRIP_STYLE": [
                    "non-global"
                ],
                
            ]),
            .release(name: .release, settings: [
                "DEVELOPMENT_ASSET_PATHS": "\"Resources/Preview Content\"",
                "PRODUCT_NAME" : "\(Project.Environment.appName)" ,
                "DISPLAY_NAME" : "\(Project.Environment.appName)" ,
//                "PROVISIONING_PROFILE_SPECIFIER": "BeatMaster",
                "OTHER_LDFLAGS": [
                    "-all_load",
                ],
                "STRIP_STYLE": [
                    "non-global"
                ],
                
            ])], defaultSettings: .recommended)
    
    
    public static let appBaseSetting: Settings = .settings(
        base: ["PRODUCT_NAME": "\(Project.Environment.appName)",
               "MARKETING_VERSION": .string(.appVersion()),
               "CURRENT_PROJECT_VERSION": .string(.appBuildVersion()),
               "CODE_SIGN_IDENTITY": "iPhone Developer",
               "CODE_SIGN_STYLE": "Automatic",
               "DEVELOPMENT_TEAM": "\(Project.Environment.organizationTeamID)",
               "VERSIONING_SYSTEM": "apple-generic",
               "DEBUG_INFORMATION_FORMAT": "DWARF with dSYM File"],
        configurations: [
            .debug(name: .debug, settings: [
                "PRODUCT_NAME": "\(Project.Environment.appName)",
//                "PROVISIONING_PROFILE_SPECIFIER": "BeatMaster",
                "OTHER_LDFLAGS": [
                      "-all_load", // Set the strip style to non-global symbols
                ],
                "STRIP_STYLE": [
                    "non-global"
                ],
            ]),
            .debug(name: "Dev", settings: [
                "PRODUCT_NAME" : "\(Project.Environment.appDevName)",
//                "PROVISIONING_PROFILE_SPECIFIER": "BeatMaster",
                "OTHER_LDFLAGS": [
                     "-all_load", // Set the strip style to non-global symbols
                ],
                "STRIP_STYLE": [
                    "non-global"
                ],
                
            ]),
            .release(name: .release, settings: [
                "PRODUCT_NAME": "\(Project.Environment.appName)",
//                "PROVISIONING_PROFILE_SPECIFIER": "BeatMaster",
                "OTHER_LDFLAGS": [
                    "-all_load",
                ],
                "STRIP_STYLE": [
                    "non-global"
                ],
            ])], defaultSettings: .recommended)
    
}
