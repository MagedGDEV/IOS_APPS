//
//  ContentView.swift
//  WordScramble
//
//  Created by Maged Alosali on 05/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section("Section 1") {
                Text("Static row 1")
                Text("Static row 2")
            }
            Section("Section 2"){
                ForEach (0..<5){ number in
                    Text("Dynamic row \(number)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
