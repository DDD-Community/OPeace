//
//  ContentView.swift
//  OPeace
//
//  Created by 염성훈 on 1/17/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import Moya
import Feature
import ComposableArchitecture
import DesignSystemKit

struct AppMainView: View {
    
    @Bindable var store: StoreOf<AppMainFeature>
    
    @State private var isActiveSplashView = true
    
    var body: some View {
        
        if isActiveSplashView {
            SplashView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                        self.isActiveSplashView = false
                    })
                }
        } else {
            NavigationStack(path: self.$store.scope(state: \.path, action: \.path)) {
                
                VStack {
                    Spacer()
                    Image(uiImage: DesignSystemKitAsset.ImageAsset.imgOpeaceGreenLogo.image)
                        .frame(width: 100, height: 100)
                    Text("회원가입하기")
                        .padding(.top, 50)
                        .font(.system(.largeTitle))
                        .foregroundStyle(.white)
                        .onTapGesture {
                            store.send(.signUpButtonTapped)
                        }
                      Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(DesignSystemKitAsset.ColorAsset.primaryBlack37.swiftUIColor)
            } destination: { store in
                switch store.state {
                case .signUpAgreement:
                    //부모로부터 socre를 통해서 reducer를 자식 뷰에 전달한다.
                    if let store = store.scope(state: \.signUpAgreement, action: \.signUPAgreement) {
                        SignUpAgreementView(store: store)
                    }
                case .signUpPaging:
                    if let store = store.scope(state: \.signUpPaging, action: \.signUpPaging) {
                        SignUpPagingView(store: store)
                    }
                }
            }
        }
    }
}


#Preview {
    AppMainView(
        store: Store(initialState: AppMainFeature.State(), reducer: {
            AppMainFeature()
                ._printChanges()
        })
    )
}
