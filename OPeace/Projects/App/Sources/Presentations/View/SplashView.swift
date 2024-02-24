//
//  SplashView.swift
//  OPeace
//
//  Created by 염성훈 on 2/20/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import DesignSystemKit

struct SplashView: View {
    
    var body: some View {
        ZStack {
            Image(uiImage: DesignSystemKitAsset.ImageAsset.imgBackgroundGradientGreenDot.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea(.all)
            
            Image(uiImage: DesignSystemKitAsset.ImageAsset.imgOpeaceSplashLogo.image)
            
        }
    }
}


#Preview {
    SplashView()
}
