//
//  SignUpPagingFeature.swift
//  Feature
//
//  Created by 염성훈 on 3/2/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import ComposableArchitecture
import DesignSystemKit

@Reducer
public struct SignUpPagingFeature {
    public init() { }
    
    public struct State: Equatable {
        public init() {}
        public var signUpName = SignUpNameFeature.State()
        public var signUpBirthDay = SignUpBirthDayFeature.State()
    }
    
    public enum Action: Equatable {
        case signUpName(SignUpNameFeature.Action)
        case signUpBirthDay(SignUpBirthDayFeature.Action)
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            default:
                return .none
            }
        }
    }
    
}
