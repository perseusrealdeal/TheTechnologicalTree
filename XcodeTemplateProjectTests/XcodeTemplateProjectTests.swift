//
//  XcodeTemplateProjectTests.swift
//  XcodeTemplateProjectTests
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 Mikhail Zhigulin of Novosibirsk.
//
//  Licensed under the special license. See LICENSE file.
//  All rights reserved.
//

import XCTest
@testable import XcodeTemplateProject

class XcodeTemplateProjectTests: XCTestCase {

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
