//
//  ContentView.swift
//  Memorize
//
//  Created by Maged Alosali on 18/02/2023.
//

import SwiftUI

struct ContentView: View {
    var vehicles = ["🚗", "🚕", "🚙", "🚌", "🚎", "🏎️", "🚓", "🚑",
                    "🚒", "🚐", "🛻", "🚚", "🚛", "🚜", "🦽", "🦼",
                    "🛴", "🚲", "🛵", "🏍️", "🛺", "🚡", "🚠", "🚃"]
    var smileys = ["😀", "😃", "😄", "😁", "😆", "🥹", "😅", "😂",
                   "🤣", "🥲", "☺️", "😊", "😇", "🙂", "🙃", "😉",
                   "😌", "😍", "🥰", "😘", "😗", "😙", "😚", "😋",
                   "😛", "😝", "😜", "🤪", "🤨", "🧐", "🤓", "😎"]
    var animals = ["🐶", "🐱", "🐭", "🐹", "🐰", "🦊", "🐻", "🐼",
                   "🐻‍❄️", "🐨", "🐯", "🦁", "🐮", "🐷", "🐸", "🐵",
                   "🐔", "🐧", "🐦", "🐤", "🦆", "🦅", "🦉", "🦇",
                   "🐺", "🐗", "🐴", "🦄", "🐊"]

    @State var emojis: [String]
    @State var emojiCount: Int
    
    
    init (){
        emojis = vehicles
        emojiCount = vehicles.count
    }
    
    var body: some View {
        VStack{
            Text("Memorize!").font(.largeTitle)
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack {
                vehicleButton
                Spacer()
                simleyButton
                Spacer()
                animalButton
            }
            .foregroundColor(.blue)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var vehicleButton: some View {
        Button {
            emojis = vehicles.shuffled()
            emojiCount = Int.random(in: 1...vehicles.count)
        } label: {
            VStack {
                Image(systemName: "car").font(.largeTitle)
                Text("Vehicles")
            }
        }
    }
    var simleyButton: some View {
        Button {
            emojis = smileys.shuffled()
            emojiCount = Int.random(in: 1...smileys.count)
        } label: {
            VStack {
                Image(systemName: "face.smiling").font(.largeTitle)
                Text("Simleys")
            }
        }
    }
    var animalButton: some View {
        Button {
            emojis = animals.shuffled()
            emojiCount = Int.random(in: 1...animals.count)
        } label: {
            VStack {
                Image(systemName: "pawprint").font(.largeTitle)
                Text("Animals")
            }
        }
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
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
            .previewDisplayName("iPhone 14")

        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
            .previewDisplayName("iPhone 14 Pro Max")
        
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            .previewDisplayName("iPhone 11")
    }
}
