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

public struct OnBoardingView: View {
    
    var number: Int
    var content: String
    @Binding var path: [ViewContent]
    
    public var body: some View {
        Text("안녕하세요? \(number)" )
        Text("전달된 데이데: \(content)")
        Button {
            path.append(ViewContent(number: 123, content: "mainCardTest"))
        } label: {
            Text("다음 메인 카드뷰 테스트 화면 ")
        }
        .navigationDestination(for: ViewContent.self) { next in
            OnBoardingView(number: next.number, content: next.content, path: $path)
        }

    }
    
    public init (
        number: Int,
        content: String,
        path: Binding<[ViewContent]>
    ) {
        self.number = number
        self.content = content
        self._path = path
    }
}

//#Preview {
//    OnBoardingView(number: 0, content: "안녕하세요 test", path: .)
//}

public struct ViewContent: Hashable {
    public let number: Int
    public let content: String
    
    public init(number: Int, content: String) {
        self.number = number
        self.content = content
    }
}
