//
//  LoadingViews.swift
//  LoadingIndicators
//
//  Created by jagcesar on 2019-12-29.
//  Copyright © 2019 Ambi. All rights reserved.
//

import SwiftUI

struct RotatingCircleWithGap: View {
    @State private var angle: Double = 270
    @State var isAnimating = false
    private let lineWidth: CGFloat = 2

    var foreverAnimation: Animation {
        Animation.linear(duration: 1)
            .repeatForever(autoreverses: false)
    }

    var body: some View {
        Circle()
            .trim(from: 0.15, to: 1)
            .stroke(Color.gray, style: StrokeStyle(lineWidth: self.lineWidth, lineCap: .round, lineJoin: CGLineJoin.round))
            .rotationEffect((Angle(degrees: self.isAnimating ? 360.0 : 0)))
            .padding(EdgeInsets(top: lineWidth/2, leading: lineWidth/2, bottom: lineWidth/2, trailing: lineWidth/2))
            .animation(foreverAnimation)
            .onAppear {
                self.isAnimating = true
        }
    }
}

private struct LoadingCircle: View {
    let circleColor: Color
    let scale: CGFloat
    private let circleWidth: CGFloat = 8

    var body: some View {
        Circle()
            .fill(circleColor)
            .frame(width: circleWidth, height: circleWidth, alignment: .center)
            .scaleEffect(scale)
    }
}

struct LoadingFlowerView: View {
    private let animationDuration: Double = 0.6
    private var singleCircleAnimationDuration: Double {
        return animationDuration/3
    }
    private var foreverAnimation: Animation {
        Animation.linear(duration: animationDuration)
            .repeatForever(autoreverses: true)
    }

    @State private var color: Color = .init(white: 0.3)
    @State private var scale: CGFloat = 0.98

    var body: some View {
        HStack(spacing: 1) {
            VStack(spacing: 2) {
                LoadingCircle(circleColor: color, scale: scale)
                    .animation(foreverAnimation.delay(singleCircleAnimationDuration*5))
                LoadingCircle(circleColor: color, scale: scale)
                    .animation(foreverAnimation.delay(singleCircleAnimationDuration*4))
            }
            VStack(alignment: .center, spacing: 1) {
                LoadingCircle(circleColor: color, scale: scale)
                    .animation(foreverAnimation)
                LoadingCircle(circleColor: .clear, scale: 1)
                LoadingCircle(circleColor: color, scale: scale)
                    .animation(foreverAnimation.delay(singleCircleAnimationDuration*3))
            }
            VStack(alignment: .center, spacing: 2) {
                LoadingCircle(circleColor: color, scale: scale)
                    .animation(foreverAnimation.delay(singleCircleAnimationDuration*1))
                LoadingCircle(circleColor: color, scale: scale)
                    .animation(foreverAnimation.delay(singleCircleAnimationDuration*2))
            }
        }
        .onAppear {
            self.color = .white
            self.scale = 1.02
        }
    }
}

struct Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RotatingCircleWithGap()
            LoadingFlowerView()
        }
    }
}
