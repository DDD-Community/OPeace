//
//  RootView.swift
//  Feature
//
//  Created by 염성훈 on 2/24/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import ComposableArchitecture

public struct RootView: View {
    
    init(store: StoreOf<RootFeature>) {
        self.store = store
    }
    
    let store: StoreOf<RootFeature>
    
    public var body: some View {
        SwitchStore(store) { state in
            switch state {
            case .signUp:
                CaseLet(/RootFeature.State.signUp, action: RootFeature.Action.signUp) { store in
                    SignUpAgreementView(store: store)
                }
            }
            
        }
    }
}
