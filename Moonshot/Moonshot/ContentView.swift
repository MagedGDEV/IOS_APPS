//
//  ContentView.swift
//  Moonshot
//
//  Created by Maged Alosali on 18/04/2023.
//

import SwiftUI

struct ContentView: View {
    let astrounats: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("\(missions.count)")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
