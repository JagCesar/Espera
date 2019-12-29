//
//  ContentView.swift
//  watchOS WatchKit Extension
//
//  Created by jagcesar on 2019-12-29.
//  Copyright © 2019 Ambi. All rights reserved.
//

import SwiftUI

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
