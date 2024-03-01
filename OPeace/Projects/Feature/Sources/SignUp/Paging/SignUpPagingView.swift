//
//  SignUpPagingView.swift
//  Feature
//
//  Created by 염성훈 on 3/2/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import ComposableArchitecture
import DesignSystemKit

public struct SignUpPagingView: View {
    public init(store: StoreOf<SignUpPagingFeature>) {
        self.store = store
    }
    
    @Bindable var store: StoreOf<SignUpPagingFeature>
    
    public var body: some View {
        GeometryReader { proxy in
            VStack {
                Text("테스트")
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 0) {
                        SignUpNameView(store: self.store.scope(state: \.signUpName, action: SignUpPagingFeature.Action.signUpName))
                        .frame(width: proxy.size.width, height: proxy.size.height)
                        SignUpBirthDayView(store: self.store.scope(state: \.signUpBirthDay, action: \.signUpBirthDay))
                            .frame(width: proxy.size.width, height: proxy.size.height)
                    }
                }
            }
        }.onAppear {
            UIScrollView.appearance().bounces = false
            UIScrollView.appearance().isPagingEnabled = true
        }
        .onDisappear {
            UIScrollView.appearance().bounces = true
        }
        .background(DesignSystemKitAsset.ColorAsset.primaryBlack37.swiftUIColor)
    }
}
