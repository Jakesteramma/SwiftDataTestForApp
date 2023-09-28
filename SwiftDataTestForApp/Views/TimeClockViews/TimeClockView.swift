//
//  ContentView.swift
//  SwiftDataTestForApp
//
//  Created by Jakesteramma on 8/15/23.
//

import SwiftUI

struct TimeClockView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    @State private var isShiftStarted: Bool = false
    @State private var isRestStarted: Bool = false
    
    @State private var newShift: Shift?
    @State private var rest: Rest?
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Button() {
                        if isShiftStarted {
                            newShift!.endShift = .now
                            isShiftStarted.toggle()
                        } else {
                            newShift = Shift(startShift: .now, rests: [])
                            modelContext.insert(newShift!)
                            isShiftStarted.toggle()
                        }
                    } label: {
                        Text(isShiftStarted ? "End Shift" : "Start Shift")
                    }
                    .frame(width: 125, height: 40)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .disabled(isRestStarted)
                    .opacity(isRestStarted ? 0 : 1)
                    
                    Button() {
                        if isRestStarted {
                            rest!.endRest = .now
                            isRestStarted.toggle()
                        } else {
                            rest = Rest(startRest: .now, isBreak: false)
                            newShift!.rests.append(rest!)
                            isRestStarted.toggle()
                        }
                    } label: {
                        Text(isRestStarted ? "End Rest" : "Start Rest")
                    }
                    .frame(width: 125, height: 40)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .disabled(!isShiftStarted)
                    .opacity(!isShiftStarted ? 0 : 1)
                }
            }
            .padding()
            .navigationTitle("Time Clock")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button() {
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}


