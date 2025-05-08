//
//  ScreenTimeManager.swift
//  haru
//
//  Created by Youngkwang Lee on 5/7/25.
//

import SwiftUI
import FamilyControls
import DeviceActivity
import ManagedSettings

class ScreenTimeManager: ObservableObject {
    @Published var isAuthorized = false
    @Published var totalScreenTime: TimeInterval = 0
    
    private let center = AuthorizationCenter.shared
    
    init() {
        // Check initial authorization status
        isAuthorized = center.authorizationStatus == .approved
    }
    
    func requestAuthorization() {
        Task {
            do {
                try await center.requestAuthorization(for: .individual)
                
                // Update UI on main thread
                await MainActor.run {
                    self.isAuthorized = center.authorizationStatus == .approved
                    if self.isAuthorized {
                        self.fetchScreenTimeData()
                    }
                }
            } catch {
                print("Authorization failed: \(error.localizedDescription)")
            }
        }
    }
    
    func fetchScreenTimeData() {
        // This is simplified. In a real implementation, you would:
        // 1. Set up DeviceActivityCenter to monitor screen time
        // 2. Query for historical data
        
        // For now, we'll simulate with a sample value
        // You'll replace this with actual DeviceActivity API calls
        
        // Simulated screen time data (3 hours, 25 minutes)
        self.totalScreenTime = 3 * 60 * 60 + 25 * 60
        
        // In a complete implementation, you would periodically update this value
    }
}
