//
//  Order.swift
//  Cupcake Corner
//
//  Created by Maged Alosali on 25/04/2023.
//

import SwiftUI

class Order: ObservableObject {
    var types = ["Vanilla", "Strawberry", "Chocolate", "Caramel"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRequestEnabled = false {
        didSet {
            if !specialRequestEnabled {
                extraFrosting = false
                addSprinkles = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
}
