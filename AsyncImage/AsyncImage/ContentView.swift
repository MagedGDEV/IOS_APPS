//
//  ContentView.swift
//  AsyncImage
//
//  Created by Maged Alosali on 22/03/2023.
//

import SwiftUI

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // MARK: - 1: BASIC
        //AsyncImage(url: URL(string: imageURL))
        // MARK: - 2: SCALE
        //AsyncImage(url: URL(string: imageURL), scale: 3.0)
        // MARK: - 3: PLACEHOLDER
        AsyncImage(url: URL(string: imageURL), scale: 3.0) {
            image in image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 120)
                .foregroundColor(.purple)
                .opacity(0.5)
        }
        .padding(40)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
