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
            Text("이름 입력화면")
                .foregroundStyle(.white)
            Spacer()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(DesignSystemKitAsset.ColorAsset.primaryBlack37.swiftUIColor)
    }
}
