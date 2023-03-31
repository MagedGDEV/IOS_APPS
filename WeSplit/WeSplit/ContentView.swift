//
//  ContentView.swift
//  WeSplit
//
//  Created by Maged Alosali on 01/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            Group {
                Text ("Hello, world")
                Text ("Hello, world")
                Text ("Hello, world")
                Text ("Hello, world")
                Text ("Hello, world")
            }
            
            Group {
                Text ("Hello, world")
                Text ("Hello, world")
                Text ("Hello, world")
                Text ("Hello, world")
                Text ("Hello, world")
                Text ("Hello, world")
                Text ("Hello, world")
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
