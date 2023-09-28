//
//  UpdateTimeView.swift
//  SwiftDataTestForApp
//
//  Created by Jakesteramma on 8/23/23.
//

import SwiftUI
import SwiftData

struct UpdateTimeView: View {
    
    @Environment(\.dismiss) var dismiss
        
    @Binding var selectedTime: Date
    
    var body: some View {
        List {
                DatePicker("Choose a Date", selection: $selectedTime)
                Button("Update") {
                    dismiss()
            }
            
        }
        .navigationTitle("Update")
    }
}



