//
//  Brain.swift
//  RugbyTimes
//
//  Created by Drew Bigelow on 5/18/16.
//  Copyright © 2016 Drew Bigelow. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    var currentTimezone: String?
    
    override init() {
        currentTimezone = NSTimeZone.localTimeZone().abbreviation
    }
    
}