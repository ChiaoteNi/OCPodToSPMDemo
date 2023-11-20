//
//  OCPodToSPMDemoTests.swift
//  OCPodToSPMDemoTests
//
//  Created by Chiaote Ni on 2023/11/19.
//

import XCTest
@testable import OCPodToSPMDemo

class OCPodToSPMDemoTests: XCTestCase {
    
    var sut: Writer!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Writer()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }

    func testingWritingTwiceExpectingTheResultToBecomeLonger() throws {
        let firstResult = sut.write()
        XCTAssertEqual(firstResult, sut.content)
        let secondResult = sut.write()
        XCTAssertTrue(secondResult.count > firstResult.count)
    }
}
