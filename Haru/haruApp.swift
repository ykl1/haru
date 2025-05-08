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
    @StateObject private var screenTimeManager = ScreenTimeManager()
    
    init() {
        // Prepare authorization center
        Task {
            try? await AuthorizationCenter.shared.requestAuthorization(for: .individual)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(screenTimeManager)
        }
    }
}
