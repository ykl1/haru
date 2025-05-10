//
//  TotalActivityView.swift
//  haruScreenTimeReport
//
//  Created by Youngkwang Lee on 5/9/25.
//

import SwiftUI


struct TotalActivityView: View {
    
    var deviceActivity: DeviceActivity
    
    var body: some View {
        ActivitiesView(activities: deviceActivity)
    }
    
}
