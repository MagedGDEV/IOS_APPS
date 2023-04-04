//
//  ContentView.swift
//  BetterRest
//
//  Created by Maged Alosali on 04/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    
    var body: some View {
            DatePicker ("Please enter a time", selection: $wakeUp)
            .labelsHidden()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
