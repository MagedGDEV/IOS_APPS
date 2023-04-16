//
//  Expenses.swift
//  iExpense
//
//  Created by Maged Alosali on 16/04/2023.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
