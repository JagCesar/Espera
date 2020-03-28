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
                // Use fixedSize() to get default size of component, override with .frame()
                .fixedSize()
        }
        .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
