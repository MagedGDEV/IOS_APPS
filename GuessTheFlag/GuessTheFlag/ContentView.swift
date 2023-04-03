//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Maged Alosali on 02/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            print("Button was tapped!")
            
        } label: {
            Label ("Edit", systemImage: "pencil")
        }
    }
    
    func executeDelete () {
        print("Now deleting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
