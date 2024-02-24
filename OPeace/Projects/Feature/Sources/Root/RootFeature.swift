//
//  RootFeature.swift
//  Feature
//
//  Created by 염성훈 on 2/24/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import ComposableArchitecture

public struct RootFeature: Reducer {
    public init() {}
    
    public enum State: Equatable {
        case signUp(SignUpAgreementFeature.State)
    }
    
    public enum Action {
        case presentSignUp
        case signUp(SignUpAgreementFeature.Action)
        
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            default:
                return .none
            }
        }
        .ifCaseLet(/State.signUp, action: /Action.signUp) {
            SignUpAgreementFeature()
        }
    }
}
