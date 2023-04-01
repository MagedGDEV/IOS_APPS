//
//  ContentView.swift
//  WeSplit
//
//  Created by Maged Alosali on 01/04/2023.
//

import SwiftUI

struct ContentView: View {
    private var studentNames = ["Maged", "Salma"]
    @State private var studentSelected = "Maged"
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $studentSelected){
                    ForEach (studentNames, id: \.self){
                        Text($0)
                    }
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
