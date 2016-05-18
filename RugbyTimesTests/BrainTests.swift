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
        let result = brain.getCurrentTimezone()
        XCTAssertEqual(result, "EDT")
    }

    

}
