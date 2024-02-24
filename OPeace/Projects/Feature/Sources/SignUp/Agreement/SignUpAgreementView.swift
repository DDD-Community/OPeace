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
    
    let store: StoreOf<SignUpAgreementFeature>
    
    public var body: some View {
        WithViewStore(self.store, observe: { $0 }) { viewStore in
            VStack {
                Text("이용 약관 동의")
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(DesignSystemKitAsset.ColorAsset.primaryBlack37.swiftUIColor)
        }
    }
}
