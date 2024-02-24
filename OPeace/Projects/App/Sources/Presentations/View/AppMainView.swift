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
    
    let store: StoreOf<AppMainFeature>
    
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
            WithViewStore(self.store, observe: { $0 }) { viewStore in
                VStack {
                    Spacer()
                    Image(uiImage: DesignSystemKitAsset.ImageAsset.imgOpeaceGreenLogo.image)
                        .frame(width: 100, height: 100)
                    Text("회원가입하기")
                        .padding(.top, 50)
                        .font(.system(.largeTitle))
                        .foregroundStyle(.white)
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .background(DesignSystemKitAsset.ColorAsset.primaryBlack37.swiftUIColor)
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
