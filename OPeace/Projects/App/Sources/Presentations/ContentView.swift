//
//  ContentView.swift
//  OPeace
//
//  Created by 염성훈 on 1/17/24.
//  Copyright © 2024 Yeom. All rights reserved.
//

import Foundation
import SwiftUI
import Moya
import Feature

struct ContentView: View {
    
    @State var path: [ViewContent] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            Text("Hello, World!")
            Button(action: {
                path.append(ViewContent(number: 0, content: "onboardingContent"))
            }, label: {
                Text("다음화면으로 이동")
            })
            .navigationDestination(for: ViewContent.self) { next in
                OnBoardingView(number: next.number, content: next.content, path: $path)
            }
        }
    }
}


#Preview {
    ContentView()
}
