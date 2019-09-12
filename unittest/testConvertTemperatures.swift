//
//  unittest.swift
//  unittest
//
//  Created by Marc Kevin Bendig on 12.09.19.
//  Copyright © 2019 Marc Kevin Bendig. All rights reserved.
//

import XCTest

class unittest: XCTestCase {
    let convert = Temperature()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testCelsiusToFahrenheit() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        convert.setCelsius(value: 25)
        convert.celsiusToFahrenheit()
        let result = convert.getFahrenheit()
        let expected = 77.0
        XCTAssertEqual(result, expected)
    }
    
    func testKelvinToFahrenheit() {
        convert.setKelvin(value: 34.4)
        convert.KelvinToFahrenheit()
        let result = convert.getFahrenheit()
        let expected = -397.75
        XCTAssertEqual(result, expected)
    }
    
    func testSetKelvin() {
        convert.setKelvin(value: -1)
        let result = convert.getKelvin()
        let expected = 0.0
        XCTAssertEqual(result, expected)
    }
    
    func testFahrenheitToCelsius() {
        convert.setFahrenheit(value: -100)
        convert.FahrenheitToCelsius()
        let result = Double(round(100*convert.getCelsius())/100)
        let expected = -73.33
        XCTAssertEqual(result, expected)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}