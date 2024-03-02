//
//  SignUpNameFeature.swift
//  Feature
//
//  Created by 염성훈 on 2/25/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import ComposableArchitecture

@Reducer
public struct SignUpNameFeature {
    public init() { }
    
    @ObservableState
    public struct State: Equatable {
        public init() {}
        var displayName = ""
    }
    
    public enum Action: BindableAction, Equatable {
        case binding(BindingAction<State>)
    }
    
    public var body: some ReducerOf<Self> {
        BindingReducer()
        
        Reduce { state, action in
            switch action {
            case .binding(\.displayName):
                return .none
            default:
                return .none
            }
        }
    }
    
}
