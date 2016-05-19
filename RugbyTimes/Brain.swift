//
//  Brain.swift
//  RugbyTimes
//
//  Created by Drew Bigelow on 5/18/16.
//  Copyright © 2016 Drew Bigelow. All rights reserved.
//

import Foundation

class Brain: NSObject {
    
    var currentTimezone: String
    var currentHoursFromGMT: Int
    let abvSwitch = AbvSwitch()
    
    override init() {
        currentTimezone = NSTimeZone.localTimeZone().abbreviation!
        currentHoursFromGMT = NSTimeZone.localTimeZone().secondsFromGMT / 3600
    }
    
    func convertTime(hour: Int, minute: Int, hoursFromGMT: Int) -> (hour: Int, minute: Int, currentTimezone: String) {
        let result = hour + ((hoursFromGMT * -1) + currentHoursFromGMT)
        return (result, minute, currentTimezone)
    }
    
    func abvToGMT(abbreviation: Abv) -> Int {
        let result = abvSwitch.abvSwitch(abbreviation)
        return result
    }
    
    func strToAbv(Abbreviation: String) -> Abv {
        let result = Abv(rawValue: Abbreviation)!
        return result
    }
    
    
}