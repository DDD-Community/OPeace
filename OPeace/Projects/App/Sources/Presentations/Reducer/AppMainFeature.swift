//
//  AppMainFeature.swift
//  OPeace
//
//  Created by 염성훈 on 2/20/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import ComposableArchitecture

struct AppMainFeature: Reducer {
    
    struct State: Equatable {
        
    }
    
    enum Action: Equatable {
        
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action{
            default:
                return .none
            }
        }
    }
    
}
