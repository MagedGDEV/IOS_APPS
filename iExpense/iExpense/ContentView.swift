//
//  ContentView.swift
//  iExpense
//
//  Created by Maged Alosali on 15/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach (numbers, id: \.self) {
                        Text("Row number \($0)")
                    }
                    .onDelete(perform: remove)
                }
                
                
                Button ("Add number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("OnDelete()")
            .toolbar {
                EditButton()
            }
        }
    }
    
    func remove (at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
