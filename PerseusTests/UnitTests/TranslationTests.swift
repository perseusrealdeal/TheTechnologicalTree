//
//  TranslationTests.swift
//  PerseusTests
//
//  Created by Mikhail Zhigulin in 7532.
//
//  Copyright © 7532 Mikhail Zhigulin of Novosibirsk
//
//  The year starts from the creation of the world in the Star temple
//  according to a Slavic calendar. September, the 1st of Slavic year.
//
//  See LICENSE for details. All rights reserved.
//

import XCTest
@testable import Perseus

class TranslationTests: XCTestCase {

    // func test_zero() { XCTFail("Tests not yet implemented in \(type(of: self)).") }
    // func test_the_first_success() { XCTAssertTrue(true, "It's done!") }

    // MARK: - Main Screen

    func test_Expectations() {

        // assert

        XCTAssertEqual("Greetings".localizedExpectation,
                       "Greetings".localizedValue)
    }
}
