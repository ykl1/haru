//
//  ContentView.swift
//  haru
//
//  Created by Youngkwang Lee on 5/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            Text("Welcome to Haru")
                .font(.title2)
                .padding(.top, 10)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
