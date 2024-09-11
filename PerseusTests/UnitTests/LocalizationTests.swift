//
//  LocalizationTests.swift
//  PerseusTests
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 - 7533 Mikhail A. Zhigulin of Novosibirsk
//
//  The year starts from the creation of the world in the Star temple
//  according to a Slavic calendar. September, the 1st of Slavic year.
//
//  See LICENSE for details. All rights reserved.
//

import XCTest
@testable import Perseus

class LocalizationTests: XCTestCase {

    private var windowController: MainWindowController!
    private var sut: ViewController!

    override func setUp() {
        super.setUp()

        windowController = MainWindowController.storyboardInstance()
        sut = windowController.contentViewController as? ViewController
    }

    // func test_zero() { XCTFail("Tests not yet implemented in \(type(of: self)).") }
    // func test_the_first_success() { XCTAssertTrue(true, "It's done!") }

    func test_Localization_of_MainScreen() {

        // arrange

        sut.loadView()

        // assert

        XCTAssertEqual(sut.labelGreetings.stringValue, "Greetings".localizedValue)
    }
}
