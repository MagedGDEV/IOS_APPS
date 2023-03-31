//
//  ContentView.swift
//  WeSplit
//
//  Created by Maged Alosali on 01/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text ("Hello, world")
                }
                .navigationTitle("SwiftUI")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
