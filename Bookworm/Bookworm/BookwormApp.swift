//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Maged Alosali on 25/04/2023.
//

import SwiftUI

@main
struct BookwormApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
