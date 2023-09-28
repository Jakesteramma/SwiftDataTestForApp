//
//  Shift.swift
//  SwiftDataTestForApp
//
//  Created by Jakesteramma on 8/15/23.
//

import Foundation
import SwiftData

@Model
class Shift {
    
    var startShift: Date?
    var endShift: Date?
        
    @Relationship(deleteRule: .cascade) var rests: [Rest]
        
    init(startShift: Date? = nil, endShift: Date? = nil, rests: [Rest]) {
        self.startShift = startShift
        self.endShift = endShift
        self.rests = []
    }
}


































