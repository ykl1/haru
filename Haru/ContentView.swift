//
//  ContentView.swift
//  haru
//
//  Created by Youngkwang Lee on 5/3/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var screenTimeManager = ScreenTimeManager()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Haru")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            if screenTimeManager.isAuthorized {
                VStack {
                    MainTabView()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 12).fill(Color(.systemGray6)))
            } else {
                VStack {
                    Text("Screen Time Access Required")
                        .font(.headline)
                    
                    Button("Grant Access") {
                        screenTimeManager.requestAuthorization()
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .padding()
            }
        }
        .padding()
    }
}

struct MainTabView: View {
    var body: some View {
        TabView {
            ReportsView()
        }
    }
}

#Preview {
    ContentView()
}
