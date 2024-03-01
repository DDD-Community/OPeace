//
//  OPeaceCustomButtonConfig.swift
//  DesignSystemKit
//
//  Created by 염성훈 on 3/1/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI

public class OPeaceCustomButtonConfig {
    public init(cornerRadius: CGFloat, enableFontColor: Color, enableBackgroundColor: Color, disableFontColor: Color, disableBackgroundColor: Color) {
        self.cornerRadius = cornerRadius
        self.enableFontColor = enableFontColor
        self.enableBackgroundColor = enableBackgroundColor
        self.disableFontColor = disableFontColor
        self.disableBackgroundColor = disableBackgroundColor
    }
    
    var cornerRadius: CGFloat
    var enableFontColor: Color
    var enableBackgroundColor:Color
    var disableFontColor: Color
    var disableBackgroundColor:Color
}
