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

@Reducer
struct AppMainFeature {
    
    @ObservableState
    public struct State {
        public init() {}
        
        var path: StackState<Path.State> = .init()
    }
    
    public enum Action {
        case signUpButtonTapped
        case path(StackAction<Path.State, Path.Action>)
    }
    
    //Path Reducer를 정의해야 var path: StackState<Path.State> = .init() 를 사용할 수 있다.
    @Reducer
    public struct Path {
        //SignUp에서 넘어갈 state를 정의해야한다.
        @ObservableState
        public enum State {
            case signUpAgreement(SignUpAgreementFeature.State)
            case signUpPaging(SignUpPagingFeature.State)
        }
        
        //하위뷰의 Action을 받아올 수 있게 rootView인 AppMainFeature에서 하위뷰의 Actiond을 갖고 있따.
        public enum Action: Equatable {
            case signUPAgreement(SignUpAgreementFeature.Action)
            case signUpPaging(SignUpPagingFeature.Action)
        }
        
        //
        public var body: some ReducerOf<Self> {
            Scope(state: /State.signUpAgreement, action: /Action.signUPAgreement) {
                SignUpAgreementFeature()
            }
            
            Scope(state: /State.signUpPaging, action: /Action.signUpPaging) {
                SignUpPagingFeature()
            }
        }
    }
    
    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action{
            case .signUpButtonTapped:
                state.path.append(.signUpAgreement(.init()))
                return .none
            //이렇게 하위뷰에서 들어오는 이벤트를 상위뷰인 AppMainFeature에서 처리하게 할 수 있다.
            case .path(.element(id: _, action: .signUPAgreement(.nextButtonTapped))):
                state.path.append(.signUpPaging(.init()))
                return .none
            default:
                return .none
            }
         }
        //부모 Feature와 Navigation을 수행하는 모든 기능들의 메인을 통합하기 위해서 이를 해줘야한다.
        .forEach(\.path, action: \.path) {
            Path()
        }
    }
    
}
