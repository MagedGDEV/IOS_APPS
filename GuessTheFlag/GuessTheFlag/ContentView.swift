//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Maged Alosali on 02/04/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    @State var score = 0
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack (spacing: 30) {
                VStack {
                    Text ("Tap the flag of")
                    Text (countries[correctAnswer])
                }
                .foregroundColor(.white)
                ForEach (0..<3) { number in
                    Button {
                        flagTapped(number)
                    } label: {
                        Image (countries[number])
                            .renderingMode(.original)
                    }
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore){
            Button("Continue", action: askQuestion)
        } message: {
            Text ("Your score is \(score)")
        }
    }
    
    func flagTapped (_ number: Int){
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        }
        else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
    
    func askQuestion () {
        countries.shuffle()
        correctAnswer = Int.random(in:0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
