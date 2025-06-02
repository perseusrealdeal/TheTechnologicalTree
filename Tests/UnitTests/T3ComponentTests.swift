//
//  T3ComponentProjectTests.swift
//  T3ComponentProjectTests
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software. LICENSE for details.
//

import XCTest
@testable import T3Component

final class T3ComponentTests: XCTestCase {

    override func setUp() {
        super.setUp()

        log.time = true
        log.message("[\(type(of: self))].\(#function)")
    }

    // func test_zero() { XCTFail("Tests not yet implemented in \(type(of: self)).") }

    func test_the_first_success() {
        log.message("[\(type(of: self))].\(#function)")
    }

    func test_approbation() {
        log.message("[\(type(of: self))].\(#function)")
        XCTAssertEqual(T3Component().text, "Hello, World!")
    }
}
