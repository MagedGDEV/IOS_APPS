//
//  ContentView.swift
//  iExpense
//
//  Created by Maged Alosali on 15/04/2023.
//

import SwiftUI

struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    @State private var user = User(firstName: "Maged", lastName: "Elesseily")
    var body: some View {
        Button("Save user"){
            let encoder = JSONEncoder()
            if let data = try? encoder.encode(user){
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
