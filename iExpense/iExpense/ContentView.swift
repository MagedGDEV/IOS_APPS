//
//  ContentView.swift
//  iExpense
//
//  Created by Maged Alosali on 15/04/2023.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    var body: some View {
        VStack {
            Text (name)
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        Button ("Show sheet"){
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "Maged")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
