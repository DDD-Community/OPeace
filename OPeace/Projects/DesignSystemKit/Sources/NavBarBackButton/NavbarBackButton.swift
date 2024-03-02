//
//  NavbarBackButton.swift
//  DesignSystemKit
//
//  Created by 염성훈 on 3/2/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI

public struct NavbarBackButton:View {
    let action: () -> Void
    
    public init(
        action: @escaping () -> Void
    ) {
        self.action = action
    }
    
    public var body: some View {
        HStack {
            Button(action: action) {
                    Image(uiImage: DesignSystemKitAsset.ImageAsset.imgArrowLeftGray.image)
            }
            Spacer()
        }
    }
}
