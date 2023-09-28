//
//  LogView.swift
//  SwiftDataTestForApp
//
//  Created by Jakesteramma on 8/15/23.
//

import SwiftUI
import SwiftData

struct LogView: View {
    
    @Query(sort: \Shift.startShift) private var shifts: [Shift]
    
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(shifts) { shift in
                    NavigationLink {
                        LogDetailView(selectedShift: shift)
                    } label: {
                        Text("\(shift.startShift.getTimeString()) - \(shift.endShift.getTimeString())") // uses getTimeString Ext which checks for nil
                    }
                    .swipeActions {
                        Button(role: .destructive) {
                            withAnimation {
                                modelContext.delete(shift)
                            }
                        } label: {
                            Label("Delete", systemImage: "trash.fill")
                        }
                    }
                }
                .navigationTitle("Log")
            }
        }
        
    }
}


    
