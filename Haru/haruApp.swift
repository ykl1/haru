//
//  haruApp.swift
//  haru
//
//  Created by Youngkwang Lee on 5/3/25.
//

import SwiftUI
import FamilyControls

@main
struct HaruApp: App {
    // State Object (persistent across view refreshes)
    @StateObject private var screenTimeManager = ScreenTimeManager()
    
    init() {
        // Async Task to request authorization
        Task {
            try? await AuthorizationCenter.shared.requestAuthorization(for: .individual)
        }
    }
    
    // Sets up main ContentView and injects screenTimeManager as environment object
    var body: some Scene {
        WindowGroup {
            // environmentObject allows you to share an ObservableObject across multiple views
            ContentView()
                .environmentObject(screenTimeManager)
        }
    }
}
