//
//  ContentView.swift
//  Memorize
//
//  Created by Maged Alosali on 18/02/2023.
//

import SwiftUI

struct ContentView: View {

    var emojis = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼",
                   "🐻‍❄️", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐵",
                   "🐔", "🐧", "🐦", "🐤", "🦆", "🦅", "🦉", "🦇",
                   "🐺", "🐗", "🐴", "🦄", "🐊"]
    
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojis.count], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
        }
        .padding(.horizontal)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape
                    .fill()
                    .foregroundColor(.white)
                shape
                    .strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            }
            else{
                shape
                    .fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")
    }
}
