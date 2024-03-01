//
//  SignUpBirthDayView.swift
//  Feature
//
//  Created by 염성훈 on 3/2/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import ComposableArchitecture
import DesignSystemKit

public struct SignUpBirthDayView:View {
    
    public init(store: StoreOf<SignUpBirthDayFeature>) {
        self.store = store
    }
    
    @Bindable var store: StoreOf<SignUpBirthDayFeature>

    public var body: some View {
        Text("나이 입력 화면")
    }
}
