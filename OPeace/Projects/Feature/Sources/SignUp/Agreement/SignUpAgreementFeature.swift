//
//  SignUpAgreementFeature.swift
//  Feature
//
//  Created by 염성훈 on 2/24/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import ComposableArchitecture

public struct SignUpAgreementFeature: Reducer {
    
    public init() {}
    
    public struct State: Equatable {
        public init() {}
    }
    
    public enum Action: Equatable {
        
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
