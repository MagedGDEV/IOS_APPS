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
            CardView()
            CardView(isFaceUp: false)
            CardView()
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 3)
                Text("✈️")
                    .font(.largeTitle)
            }
            else{
                RoundedRectangle(cornerRadius: 25)
                    .fill()
            }
            
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}
