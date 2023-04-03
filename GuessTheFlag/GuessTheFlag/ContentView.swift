//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Maged Alosali on 02/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
