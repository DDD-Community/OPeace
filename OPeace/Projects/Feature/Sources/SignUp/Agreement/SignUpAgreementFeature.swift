//
//  SignUpAgreementFeature.swift
//  Feature
//
//  Created by 염성훈 on 2/24/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import ComposableArchitecture

@Reducer
public struct SignUpAgreementFeature {
    
    public init() {}
    
    @ObservableState
    public struct State: Equatable {
        public init() {}
        var allAgreeCheckState: Bool = false
        var ageAgreeCheckState: Bool = false
        var serviceAgreeCheckState: Bool = false
        var privacyAgreeCheckState: Bool = false
        var enableNextButton = false
    }
    
    public enum Action {
        case allAgreeCheckTapped
        case ageAgreeCheckTappd
        case serviceAgreeCheckTapped
        case privacyAgreeCheckTapped
        case nextButtonTapped

    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .allAgreeCheckTapped:
                let newState = !state.allAgreeCheckState
                state.allAgreeCheckState = newState
                state.ageAgreeCheckState = newState
                state.serviceAgreeCheckState = newState
                state.privacyAgreeCheckState = newState
                state.enableNextButton = newState
                return .none
            case .ageAgreeCheckTappd:
                state.ageAgreeCheckState.toggle()
                let enableNextButton = self.checkEnableNextButton(age: state.ageAgreeCheckState, service: state.serviceAgreeCheckState, privacy: state.privacyAgreeCheckState)
                state.enableNextButton = enableNextButton
                state.allAgreeCheckState = enableNextButton
                return .none
            case .serviceAgreeCheckTapped:
                state.serviceAgreeCheckState.toggle()
                let enableNextButton = self.checkEnableNextButton(age: state.ageAgreeCheckState, service: state.serviceAgreeCheckState, privacy: state.privacyAgreeCheckState)
                state.enableNextButton = enableNextButton
                state.allAgreeCheckState = enableNextButton
                return .none
            case .privacyAgreeCheckTapped:
                state.privacyAgreeCheckState.toggle()
                let enableNextButton = self.checkEnableNextButton(age: state.ageAgreeCheckState, service: state.serviceAgreeCheckState, privacy: state.privacyAgreeCheckState)
                state.enableNextButton = enableNextButton
                state.allAgreeCheckState = enableNextButton
                return .none
            case .nextButtonTapped:
                return .none
            default:
                return .none
            }
        }
    }
    
    private func checkEnableNextButton(age:Bool, service:Bool, privacy: Bool) -> Bool {
        if age && service && privacy {
            return true
        } else {
            return false
        }
    }
}
