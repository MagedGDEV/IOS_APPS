//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Maged Alosali on 02/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert){
            Button("Delete", role: .destructive){}
            Button("Cancel", role: .cancel){}
        } message: {
            Text("Please read this")
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
