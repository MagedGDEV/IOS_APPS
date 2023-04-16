//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Maged Alosali on 16/04/2023.
//

import Foundation

struct ExpenseItem: Identifiable{
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}
