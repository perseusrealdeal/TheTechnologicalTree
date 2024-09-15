//
//  XcodeTemplateProjectTests.swift
//  PerseusTests
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 - 7533 Mikhail A. Zhigulin of Novosibirsk
//
//  The year starts from the creation of the world according to a Slavic calendar.
//  September, the 1st of Slavic year.
//
//  See LICENSE for details. All rights reserved.
//

import XCTest
@testable import Perseus

class T3ProjectTests: XCTestCase {

    override class func setUp() {
        super.setUp()
        log.message("[\(type(of: self))].\(#function)")
    }

    override class func tearDown() {
        log.message("[\(type(of: self))].\(#function)")
        super.tearDown()
    }

    // func test_zero() { XCTFail("Tests not yet implemented in \(type(of: self)).") }

    func test_the_first_success() { XCTAssertTrue(true, "It's done!") }

    func test_CFBundleDisplayName_should_be_localized() {

        let requirement = "CFBundleDisplayName".localizedFromRequirements
        let expected = Bundle.main.localizedInfoDictionary?["CFBundleDisplayName"] as? String

        let tell_not_equal =
        "\"CFBundleDisplayName\" group title is not correct with the expected value."

        XCTAssertEqual(requirement, expected, tell_not_equal)
    }

    func test_CFBundleName_should_be_localized() {

        let requirement = "CFBundleName".localizedFromRequirements
        let expected = Bundle.main.localizedInfoDictionary?["CFBundleName"] as? String

        let tell_not_equal =
        "\"CFBundleName\" group title is not correct with the expected value."

        XCTAssertEqual(requirement, expected, tell_not_equal)
    }
}
