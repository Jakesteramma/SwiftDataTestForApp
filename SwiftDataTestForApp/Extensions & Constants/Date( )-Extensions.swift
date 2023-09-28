//
//  Date-Extensions.swift
//  SwiftDataTestForApp
//
//  Created by Jakesteramma on 8/17/23.
//

import Foundation

extension Date? {
    func getTimeString() -> String {
        var timeString = ""
        
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "h:mm"
        
        if self != nil {
            timeString = timeFormatter.string(from: self!)
        } else {
            timeString = "--:--"
        }
        
        return timeString
    }
}
