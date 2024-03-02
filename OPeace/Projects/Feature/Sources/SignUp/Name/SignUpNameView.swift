//
//  SignUpNameView.swift
//  Feature
//
//  Created by 염성훈 on 2/25/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import ComposableArchitecture
import DesignSystemKit

public struct SignUpNameView:View {
    public init(store: StoreOf<SignUpNameFeature>) {
        self.store = store
    }
    
    @Bindable var store: StoreOf<SignUpNameFeature>
    
    public var body: some View {
        VStack {
            Spacer()
                .frame(height: 50)
            VStack(spacing: 10) {
                Text("닉네임 입력")
                    .font(DesignSystemKitFontFamily.Pretendard.bold.swiftUIFont(size: 24))
                    .foregroundStyle(.white)
                Text("2~5자까지 입력할 수 있어요")
                    .foregroundStyle(DesignSystemKitAsset.ColorAsset.grayScale300.swiftUIColor)
            }
            Spacer()
                .frame(height: 50)
            TextField("닉네임", text: $store.displayName)
                .font(DesignSystemKitFontFamily.Pretendard.bold.swiftUIFont(size: 48))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}
