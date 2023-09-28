//
//  SwiftDataTestForAppApp.swift
//  SwiftDataTestForApp
//
//  Created by Jakesteramma on 8/15/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataTestForAppApp: App {
    var body: some Scene {
        WindowGroup {
                TabView {
                    TimeClockView()
                        .tabItem {
                            Image(systemName: "clock")
                            Text("Time Clock")
                        }
                    
                    LogView()
                        .tabItem {
                            Image(systemName: "list.bullet")
                            Text("Log")
                        }
                    
                    SettingsView()
                        .tabItem {
                            Image(systemName: "gear")
                            Text("Settings")
                        }
                }
                .accentColor(Color("brandPrimary"))
                .modelContainer(for: [Shift.self, Rest.self])
            }
    }
}

