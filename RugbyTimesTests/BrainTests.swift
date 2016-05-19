//
//  BrainTests.swift
//  RugbyTimes
//
//  Created by Drew Bigelow on 5/18/16.
//  Copyright © 2016 Drew Bigelow. All rights reserved.
//

import XCTest
@testable import RugbyTimes

let brain = Brain()

class BrainTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testCurrentTimeZone() {
        let result = brain.currentTimezone
        XCTAssertEqual(result, "EDT")
    }
    
    func testCurrentHoursFromGMT() {
        let result = brain.currentHoursFromGMT
        XCTAssertEqual(result, -4)
    }
    
    func testConvertTime() {
        let result = brain.convertTime(3, minute: 0, hoursFromGMT: -5)
        XCTAssertEqual(result.hour, 4)
    }
    
    func testAbvToGMT() {
        let a = brain.strToAbv("CST")
        let result = brain.abvToGMT(a)
        XCTAssertEqual(result, -6)
    }
    
}
