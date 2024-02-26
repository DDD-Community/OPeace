//
//  OnBoardingView.swift
//  Feature
//
//  Created by 염성훈 on 1/27/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import ComposableArchitecture
import DesignSystemKit

public struct SignUpAgreementView:View {
    
    public init(store: StoreOf<SignUpAgreementFeature>) {
        self.store = store
    }
    
    @Bindable var store: StoreOf<SignUpAgreementFeature>
    
    public var body: some View {
        VStack {
            Spacer()
            Text("이용 약관 동의")
                .font(.system(size: 24))
                .foregroundStyle(DesignSystemKitAsset.ColorAsset.grayScaleW.swiftUIColor)
                .onTapGesture {
                    store.send(.signUpNameButtonTapped)
                }
            Text("원활한 서비스 이용을 위해 동의해 주세요")
                .font(.system(size: 16))
                .foregroundStyle(DesignSystemKitAsset.ColorAsset.grayScale300.swiftUIColor)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(DesignSystemKitAsset.ColorAsset.primaryBlack37.swiftUIColor)
    }
}
