//
//  ContentView.swift
//  Animation
//
//  Created by Maged Alosali on 12/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    var body: some View {
        Button("Tap me") {
            animationAmount += 1
        }
        .padding(50)
        .foregroundColor(.white)
        .background(.red)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .blur(radius:(animationAmount - 1) * 3)
        .animation(
            .easeInOut(duration: 1)
            .repeatCount(3, autoreverses: true),
            value: animationAmount)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
