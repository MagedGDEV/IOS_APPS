//
//  ContentView.swift
//  Memorize
//
//  Created by Maged Alosali on 18/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        HStack{
            ZStack {
                
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 3)
                Text("Hello, world")
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 3)
                Text("Hello, world")
            }
            .padding(.horizontal)
            .foregroundColor(.red)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
