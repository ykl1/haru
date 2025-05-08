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
                    Text("Today's Screen Time")
                        .font(.headline)
                    
                    Text(formatTimeInterval(screenTimeManager.totalScreenTime))
                        .font(.system(size: 36, weight: .bold))
                        .padding()
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
    
    // Helper function to format time interval
    private func formatTimeInterval(_ interval: TimeInterval) -> String {
        let hours = Int(interval) / 3600
        let minutes = (Int(interval) % 3600) / 60
        
        if hours > 0 {
            return "\(hours)h \(minutes)m"
        } else {
            return "\(minutes)m"
        }
    }
}

#Preview {
    ContentView()
}
