//
//  ReportView.swift
//  haru
//
//  Created by Youngkwang Lee on 5/9/25.
//

import SwiftUI

struct ReportsView: View {
    
    var body: some View {
        ZStack {
            Loading(text: "loading...",
                    scale: 1)
            DeviceActivityReporterAdapter()
        }
    }
}

struct ReportsView_Previews: PreviewProvider {
    static var previews: some View {
        ReportsView()
    }
}
