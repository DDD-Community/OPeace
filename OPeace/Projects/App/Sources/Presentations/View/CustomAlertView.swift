//
//  CustomAlertView.swift
//  OPeace
//
//  Created by kimhyeongmin on 2/24/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import SwiftUI
import DesignSystemKit

struct CustomAlertView: View {
    var message: String?
    var CancelAction: () -> Void
    var ConfirmAction: (() -> Void)?
    
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.8)
                .ignoresSafeArea()
            
            HStack {
                VStack {
                    Spacer(minLength: 80)
                    
                    HStack{
                        if let message = message {
                            Text(message)
                            // TODO: 1
                            // 폰트 사이즈, 굵기 등의 시스템 설정 논의
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(DesignSystemKitAsset.ColorAsset.grayScaleW.swiftUIColor)
                                .multilineTextAlignment(.center)
                                .padding()
                        }
                    }
                    
                    Spacer(minLength: 56)
                    
                    HStack(spacing: 16) {
                        Button(action: {
                            self.CancelAction()
                        }, label: {
                            Text("아니오")
                            // TODO: 1
                                .font(.system(size: 18, weight: .semibold))
                                .foregroundColor(DesignSystemKitAsset.ColorAsset.grayScaleW.swiftUIColor)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(DesignSystemKitAsset.ColorAsset.grayScale400.swiftUIColor)
                                .cornerRadius(100)
                        })
                        Button(action: {
                            self.ConfirmAction?()
                        }, label: {
                            Text("네")
                            // TODO: 1
                                .font(.system(size: 18, weight: .semibold))
                            // TODO: 3
                            // graySacleB -> grayScaleB 오타 수정
                                .foregroundColor(DesignSystemKitAsset.ColorAsset.graySacleB.swiftUIColor)
                                .padding()
                                .frame(maxWidth: .infinity)
                            // TODO: 4
                            // primary 색상 추가 후 수정
                                .background(Color(red: 0, green: 255, blue: 0))
                                .cornerRadius(100)
                        })
                    }
                    
                    Spacer(minLength: 20)
                }
                .frame(height: 240)
                .padding()
                .background(DesignSystemKitAsset.ColorAsset.grayScale500.swiftUIColor)
                // TODO: 2
                // 팝업창 Radius 질문 후 수정
                .cornerRadius(20)
            }
            .padding(32)
        }
    }
}

#Preview {
    CustomAlertView(message: "로그인 하시겠어요?", CancelAction: {}, ConfirmAction: {})
}
