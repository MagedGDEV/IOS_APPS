//
//  ContentView.swift
//  iExpense
//
//  Created by Maged Alosali on 15/04/2023.
//

import SwiftUI

struct User {
    var firstName = "Maged"
    var lastName = "Elesseily"
}

struct ContentView: View {
    
    @State private var user = User ()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            TextField("First Name", text: $user.firstName)
            TextField("Last Name", text: $user.lastName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
