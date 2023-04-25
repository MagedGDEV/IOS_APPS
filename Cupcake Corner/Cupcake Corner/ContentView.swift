//
//  ContentView.swift
//  Cupcake Corner
//
//  Created by Maged Alosali on 25/04/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var order = Order()
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker ("Select your cake type", selection: $order.type){
                        ForEach(order.types.indices, id: \.self){
                            Text("\(order.types[$0])")
                        }
                    }
                    Stepper ("Number of cakes: \(order.quantity)", value: $order.quantity, in: 3...20)
                }
            }
            .navigationTitle("Cupcake Corner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
