//
//  ContentView.swift
//  Animation
//
//  Created by Maged Alosali on 12/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowing = false
    var body: some View {
        VStack {
            Button ("Tap me") {
                withAnimation() {
                    isShowing.toggle()
                }
            }
            if isShowing {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
