//
//  LogDetailView.swift
//  SwiftDataTestForApp
//
//  Created by Jakesteramma on 8/17/23.
//

import SwiftUI
import SwiftData

struct LogDetailView: View {
    
    @Bindable var selectedShift: Shift
        
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Start Shift")) {
                    Button {
                        print("start shift button \n")
                        UpdateTimeView(selectedTime: $selectedShift.startShift)
                    } label: {
                        Text("\(selectedShift.startShift.getTimeString())")
                    }
                    .buttonStyle(BorderlessButtonStyle()) // makes only the text clickable instead of the entire row
                }
                
                Section(header: Text("Rests")) {
                    ForEach(selectedShift.rests) { rest in
                        HStack {
                            Button {
                                print("start rest button \n")
                            } label: {
                                Text("\(rest.startRest.getTimeString())")
                            }
                            .buttonStyle(BorderlessButtonStyle()) // makes only the text clickable instead of the entire row which activates both buttons
                            
                            Button {
                                print("end rest button \n")
                            } label: {
                                Text("     -     \(rest.endRest.getTimeString())")
                            }
                            .buttonStyle(BorderlessButtonStyle()) // makes only the text clickable instead of the entire row which activates both buttons
                        }
                    }
                }
                
                Section(header: Text("End Shift")) {
                    Button {
                        print("end shift button \n")
                    } label: {
                        Text("\(selectedShift.endShift.getTimeString())")
                    }
                    .buttonStyle(BorderlessButtonStyle())// makes only the text clickable instead of the entire row
                }
            }
            .navigationTitle("Log Detail")
        }
    }
}


