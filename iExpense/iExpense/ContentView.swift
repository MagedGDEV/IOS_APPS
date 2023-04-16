//
//  ContentView.swift
//  iExpense
//
//  Created by Maged Alosali on 15/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    var body: some View {
        Button("Tap Count: \(tapCount)"){
            tapCount += 1
            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
