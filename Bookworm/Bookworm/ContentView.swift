//
//  ContentView.swift
//  Bookworm
//
//  Created by Maged Alosali on 25/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) private var moc
    @FetchRequest(sortDescriptors: []) var books: FetchedResults<Book>
    
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
            Text ("Count: \(books.count)")
                .navigationTitle("Bookworm")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button {
                            showingSheet.toggle()
                        } label: {
                            Label("Add Book", systemImage: "plus")
                        }
                    }
                }
        }
        .sheet(isPresented: $showingSheet){
            AddBookView()
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
