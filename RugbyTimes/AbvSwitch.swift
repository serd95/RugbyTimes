//
//  AbvSwitch.swift
//  RugbyTimes
//
//  Created by Drew Bigelow on 5/19/16.
//  Copyright © 2016 Drew Bigelow. All rights reserved.
//

import Foundation

class AbvSwitch: NSObject {
    
    func abvSwitch(abbreviation: Abv) -> Int {
        
        var result = 0
        
        switch abbreviation {
            
            case .GMT:
                result = 0
            case .UTC:
                result = 0
            case .WET:
                result = 0
                
            case .CET:
                result = 1
            case .FWT:
                result = 1
            case .MET:
                result = 1
            case .MEWT:
                result = 1
            case .SWT:
                result = 1
                
            case .EET:
                result = 2
                
            case .BT:
                result = 3
                
            case .ZP4:
                result = 4
                
            case .ZP5:
                result = 5
                
            case .ZP6:
                result = 6
                
            case .CXT:
                result = 7
                
            case .CCT:
                result = 8
            case .AWST:
                result = 8
            case .WST:
                result = 8
                
            case .JST:
                result = 9
                
            case .EAST:
                result = 10
            case .GST:
                result = 10
                
            case .IDLE:
                result = 12
            case .NZST:
                result = 12
            case .NZT:
                result = 12
                
            case .WAT:
                result = -1
                
            case .AT:
                result = -2
                
            case .AST:
                result = -4
                
            case .EST:
                result = -5
                
            case .CST:
                result = -6
                
            case .MST:
                result = -7
                
            case .PST:
                result = -8
                
            case .AKST:
                result = -9
            case .YST:
                result = -9
                
            case .HST:
                result = -10
            case .HAST:
                result = -10
            case .AHST:
                result = -10
            case .CAT:
                result = -10
                
            case .NT:
                result = -11
                
            case .IDLW:
                result = -12
        }
        return result
    }
    
}