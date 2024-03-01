//
//  OnBoardingButtonConfig.swift
//  DesignSystemKit
//
//  Created by 염성훈 on 3/1/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI

public class OnBoardingButtonConfig: OPeaceCustomButtonConfig {
    static public func create() -> OPeaceCustomButtonConfig {
        let config = OPeaceCustomButtonConfig(
            cornerRadius: 32,
            enableFontColor: DesignSystemKitAsset.ColorAsset.grayScale600.swiftUIColor,
            enableBackgroundColor: DesignSystemKitAsset.ColorAsset.primaryGreen.swiftUIColor,
            disableFontColor: DesignSystemKitAsset.ColorAsset.grayScale200.swiftUIColor,
            disableBackgroundColor: DesignSystemKitAsset.ColorAsset.grayScale400.swiftUIColor
        )
        
        return config
    }
}
