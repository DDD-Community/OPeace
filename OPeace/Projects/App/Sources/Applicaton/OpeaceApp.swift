//
//  OpeaceApp.swift
//  OPeace
//
//  Created by 염성훈 on 1/17/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import Feature
import ComposableArchitecture

@main
struct OpeaceApp: App {
    var body: some Scene {
        WindowGroup {
            AppMainView(
                store: Store(initialState: AppMainFeature.State(), reducer: {
                    AppMainFeature()
                }))
        }
    }
}
