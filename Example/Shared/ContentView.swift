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
    var body: some View {
        VStack {
            RotatingCircleWithGap()
            LoadingFlowerView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
