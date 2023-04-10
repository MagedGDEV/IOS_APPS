//
//  ContentView.swift
//  WordScramble
//
//  Created by Maged Alosali on 05/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(0..<5) {
            Text ("Dynamic row \($0)")
        }
    }
    
    func loadFile() {
        if let fileURL = Bundle.main.url(forResource: "some-file", withExtension: "txt"){
            if let fileContent = try? String(contentsOf: fileURL) {
                print(fileContent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
