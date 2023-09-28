//
//  Rest.swift
//  SwiftDataTestForApp
//
//  Created by Jakesteramma on 8/18/23.
//

import Foundation
import SwiftData

@Model
class Rest {
    
    var startRest: Date?
    var endRest: Date?
    var isBreak: Bool
        
    init(startRest: Date? = nil, endRest: Date? = nil, isBreak: Bool) {
        self.startRest = startRest
        self.endRest = endRest
        self.isBreak = false
    }
}
