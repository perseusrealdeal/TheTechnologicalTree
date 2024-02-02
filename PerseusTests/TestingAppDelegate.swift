//
//  TestingAppDelegate.swift
//  PerseusTests
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 - 7532 Mikhail Zhigulin of Novosibirsk
//
//  The year starts from the creation of the world in the Star temple
//  according to a Slavic calendar. September, the 1st of Slavic year.
//
//  See LICENSE for details. All rights reserved.
//

import XCTest
@testable import Perseus

// MARK: - The Testing Application Delegate

@objc(TestingAppDelegate)
class TestingAppDelegate: NSResponder, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ aNotification: Notification) {

        testlog.level = .info
        log.turned = .off

        testlog.message("", .info)
        testlog.message("The app's test bundle start point...", .info)
        testlog.message("", .info)
        testlog.message("Launching with testing matter purpose...", .info)
        testlog.message("", .info)

        testlog.message("[\(type(of: self))].\(#function)")
    }
}
