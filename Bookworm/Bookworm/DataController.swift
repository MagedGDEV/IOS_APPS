//
//  DataController.swift
//  Bookworm
//
//  Created by Maged Alosali on 25/04/2023.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Bookworm")
    
    init (){
        container.loadPersistentStores{ description, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
