//
//  ContentView.swift
//  AsyncImage
//
//  Created by Maged Alosali on 22/03/2023.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self.resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self.imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // MARK: - 1: BASIC
        //AsyncImage(url: URL(string: imageURL))
    
        
        // MARK: - 2: SCALE
        //AsyncImage(url: URL(string: imageURL), scale: 3.0)
        
        
        // MARK: - 3: PLACEHOLDER & EXTENSIONS
//        AsyncImage(url: URL(string: imageURL), scale: 3.0) {image in
//            image.imageModifier()
//        } placeholder: {
//            Image(systemName: "photo.circle.fill")
//                .iconModifier()
//
//        }
//        .padding(40)
        
        
        // MARK: - 4: PHASE
//        AsyncImage (url: URL(string: imageURL)) { phase in
//            // Success: image successfully loaded.
//            // Failure: image failed to load
//            // Empty: Loading state
//
//            if let image = phase.image {
//                image.imageModifier()
//            }
//            else if phase.error != nil {
//                Image(systemName: "ant.circle.fill").iconModifier()
//            }
//            else {
//                Image(systemName: "photo.circle.fill").iconModifier()
//            }
//        }
//        .padding(40)
        
        
        // MARK: - 5: ANIMATION
        AsyncImage(url: URL(string: imageURL)){ phase in
            switch (phase){
            case .success(let image):
                image.imageModifier()
            case .failure(_):
                Image(systemName: "ant.circle.fill").iconModifier()
            case .empty:
                Image(systemName: "photo.circle.fill").iconModifier()
            default:
                ProgressView()
            }
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
