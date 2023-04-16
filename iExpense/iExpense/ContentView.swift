//
//  ContentView.swift
//  iExpense
//
//  Created by Maged Alosali on 15/04/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var expenses = Expenses()
    @State private var isShowing = false
    var body: some View {
        NavigationView {
            List {
                ForEach (expenses.items){item in
                    HStack{
                        VStack(alignment: .leading){
                            Text(item.name)
                                .font(.headline)
                            Text(item.type)
                        }
                        Spacer()
                        Text(item.amount, format: .currency(code: "USD"))
                    }
                }
                .onDelete(perform: remove)
            }
            .navigationTitle("IExpense")
            .toolbar {
                Button {
                    isShowing.toggle()
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .sheet(isPresented: $isShowing) {
            AddView(expenses: expenses)
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
