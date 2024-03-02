//
//  OPeaceCustomButton.swift
//  DesignSystemKit
//
//  Created by 염성훈 on 3/1/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI


public struct OPeaceCustomButton: View {
    let action: () -> Void
    let title: String
    let config: OPeaceCustomButtonConfig
    var isEnable: Bool = false
    
    public init(
        action: @escaping () -> Void,
        title:String,
        config:OPeaceCustomButtonConfig,
        isEnable: Bool = false
    ) {
        self.title = title
        self.config = config
        self.action = action
        self.isEnable = isEnable
    }
    
    public var body: some View {
        Button(action: action) {
            VStack {
                Text(title)
                    .padding()
                    .foregroundStyle(isEnable ? config.enableFontColor : config.disableFontColor)
                    .frame(maxWidth: .infinity, alignment: .center) //화면을 꽉채우게 하려면 이렇게 하면된다.
            }
            .background(isEnable ? config.enableBackgroundColor : config.disableBackgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: config.cornerRadius))
        }
    }
}
