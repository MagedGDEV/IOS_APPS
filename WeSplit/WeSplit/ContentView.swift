//
//  ContentView.swift
//  WeSplit
//
//  Created by Maged Alosali on 01/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    var body: some View {
        Button ("Tap count: \(tapCount)") {
            tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
