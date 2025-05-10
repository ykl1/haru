//
//  ActivitiesView.swift
//  Monitor
//
//  Created by Youngkwang Lee on 5/9/25.
//

import SwiftUI

struct ActivitiesView: View {
    
    var activities: DeviceActivity
    
    var body: some View {
        
        VStack {
            Spacer(minLength: 50)
            Text("Usage time: ")
                .bold()
                .font(.title3)
            List(activities.apps) { app in
                ListItem(app: app)
            }
        }
        
    }
    
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView(activities: DeviceActivity(duration: .zero, apps: [AppReport(id: "1", name: "Twitter", duration: .zero)]))
    }
}
