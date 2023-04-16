//
//  ContentView.swift
//  iExpense
//
//  Created by Maged Alosali on 15/04/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var expenses = Expenses()
    var body: some View {
        NavigationView {
            List {
                ForEach (expenses.items, id: \.name){item in
                    Text (item.name)
                }
                .onDelete(perform: remove)
            }
            .navigationTitle("IExpense")
            .toolbar {
                Button {
                    let expense = ExpenseItem(name: "test", type: "test", amount: 0)
                    expenses.items.append(expense)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    func remove (at offsets: IndexSet){
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
