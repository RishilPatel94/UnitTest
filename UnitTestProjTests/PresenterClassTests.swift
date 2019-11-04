//
//  PresenterClassTests.swift
//  UnitTestProjTests
//
//  Created by Rish on 11/4/19.
//  Copyright © 2019 Rishil. All rights reserved.
//

import XCTest
@testable import UnitTestProj

class PresenterClassTests: XCTestCase {
    let errorMessage1000 = "Temporary error 1000"
    let errorMessage2000 = "Temporary error 2000"
    let invalidErrorCode = 2500
    
    var presenter = PresenterClass()
    
    func testErrorMessageFor1000_valid() {
        let validErrorMessage = presenter.buildErrorMessage(errorCode: 1000)
        XCTAssertTrue(validErrorMessage == errorMessage1000)
    }
    
    func testErrorMessageFor1000_inValid() {
        let inValidErrorMessage = presenter.buildErrorMessage(errorCode: invalidErrorCode)
        XCTAssertFalse(inValidErrorMessage == errorMessage1000)
    }
    
    func testErrorMessageFor2000_valid() {
        let validErrorMessage = presenter.buildErrorMessage(errorCode: 2000)
        XCTAssertTrue(validErrorMessage == errorMessage2000)
    }
    
    func testErrorMessageFor2000_inValid() {
        let inValidErrorMessage = presenter.buildErrorMessage(errorCode: invalidErrorCode)
        XCTAssertFalse(inValidErrorMessage == errorMessage2000)
    }
    
    func testDefaultErrorMessage() {
        let defaultErrorMessage = presenter.buildErrorMessage(errorCode: invalidErrorCode)
        XCTAssertEqual("", defaultErrorMessage)
    }
}
