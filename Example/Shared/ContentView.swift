//
//  ContentView.swift
//  LoadingIndicators
//
//  Created by jagcesar on 2019-12-29.
//  Copyright © 2019 Ambi. All rights reserved.
//

import SwiftUI
import Espera

struct ContentView: View {
    @State var progress: Double = 0
    
    var body: some View {
        VStack {
            RotatingCircleWithGap().frame(width: 100, height: 100)
            LoadingFlowerView()
            StretchLoadingView().frame(width: 60, height: 14)
            StretchProgressView(progress: $progress).frame(width: 60, height: 14)
            Slider(value: $progress)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
