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
                .font(DesignSystemKitFontFamily.Pretendard.bold.swiftUIFont(size: 24))
                .foregroundStyle(DesignSystemKitAsset.ColorAsset.grayScaleW.swiftUIColor)
                .padding(.bottom, 8)
            Text("원활한 서비스 이용을 위해 동의해 주세요")
                .font(DesignSystemKitFontFamily.Pretendard.medium.swiftUIFont(size: 16))
                .foregroundStyle(DesignSystemKitAsset.ColorAsset.grayScale300.swiftUIColor)
            Spacer()
            CheckTitleView(action: {
                store.send(.allAgreeCheckTapped)
            }, text: "약관 전체 동의", isChecked: store.allAgreeCheckState)
            Divider()
                .background(DesignSystemKitAsset.ColorAsset.grayScale400.swiftUIColor)
                .padding(.horizontal, 20)
            VStack(spacing: 20) {
                CheckTitleView(action: {
                    store.send(.ageAgreeCheckTappd)
                }, text: "(필수)만 14세 이상입니다.", isChecked: store.ageAgreeCheckState)
                CheckTitleView(action: {
                    store.send(.serviceAgreeCheckTapped)
                }, text: "(필수)서비스 이용 약관", isChecked: store.serviceAgreeCheckState)

                CheckTitleView(action: {
                    store.send(.privacyAgreeCheckTapped)
                }, text: "(필수)개인정보 처리방침", isChecked: store.privacyAgreeCheckState)
            }
            Spacer() 
            Spacer()
            Spacer()
            OPeaceCustomButton(
                action: {
                    guard store.state.enableNextButton else { return }
                    store.send(.nextButtonTapped)
                },
                title: "다음",
                config: OnBoardingButtonConfig.create(),
                isEnable: store.state.enableNextButton
            )
            .padding(.horizontal, 30)

            Spacer()
                .frame(height: 50)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(DesignSystemKitAsset.ColorAsset.primaryBlack37.swiftUIColor)
        .navigationBarBackButtonHidden()
        .overlay(alignment: .topLeading) {
            NavbarBackButton {
                store.send(.backButtonTapped)
            }
        }
    }
}

public struct CheckTitleView: View {
    public init(
        action: @escaping () -> Void,
        text: String,
        isChecked: Bool = false
    ) {
        self.action = action
        self.text = text
        self.isChecked = isChecked
    }
    
    private var action: () -> Void
    private var text: String
    private var isChecked: Bool
    
    
    public var body: some View {
        HStack {
            Image(
                uiImage:
                    isChecked ? DesignSystemKitAsset.ImageAsset.imgCircleCheckRoundGreen.image:
                    DesignSystemKitAsset.ImageAsset.imgCircleCheckRoundGray.image
            )
                .resizable()
                .frame(width: 20, height: 20)
                .padding(.init(top: 0, leading: 30, bottom: 0, trailing: 0))
            Text(text)
                .font(DesignSystemKitFontFamily.Pretendard.semiBold.swiftUIFont(size: 16))
                .foregroundStyle(.white)
            Spacer()
        }
        .onTapGesture {
            action()
        }
    }
}
