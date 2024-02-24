//
//  AppMainFeature.swift
//  OPeace
//
//  Created by 염성훈 on 2/20/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import ComposableArchitecture
import Feature

struct AppMainFeature: Reducer {
    
    public struct State: Equatable {
        public init() {}
        
        var path: StackState<Path.State> = .init()
    }
    
    public enum Action: Equatable {
        case signUpButtonTapped
        case path(StackAction<Path.State, Path.Action>)
    }
    
    public struct Path: Reducer {
        public enum State: Equatable {
            case signUpAgreement(SignUpAgreementFeature.State)
        }
        
        public enum Action: Equatable {
            case signUPAgreement(SignUpAgreementFeature.Action)
        }
        
        public var body: some ReducerOf<Self> {
            Scope(state: /State.signUpAgreement, action: /Action.signUPAgreement) {
                SignUpAgreementFeature()
            }
        }
        
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action{
            case .signUpButtonTapped:
                state.path.append(.signUpAgreement(.init()))
                return .none
            default:
                return .none
            }
        }
        .forEach(\.path, action: /Action.path) {
            Path()
        }
    }
    
}
