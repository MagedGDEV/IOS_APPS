//
//  ContentView.swift
//  WeSplit
//
//  Created by Maged Alosali on 01/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    var body: some View {
        Form {
            Section {
                TextField("Amount", value: $checkAmount, format:
                        .currency(code: Locale.current.currency?.identifier ?? "USD"))
                .keyboardType(.decimalPad)
                Picker ("Number of people", selection: $numberOfPeople){
                    ForEach (2..<100){
                        Text ("\($0) people")
                    }
                }
            }
            Section {
                Text(checkAmount, format:
                        .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
