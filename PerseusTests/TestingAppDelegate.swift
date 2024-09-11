//
//  TestingAppDelegate.swift
//  T3ProjectTests
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 - 7532 Mikhail Zhigulin of Novosibirsk
//
//  The year starts from the creation of the world according to a Slavic calendar.
//  September, the 1st of Slavic year.
//
//  See LICENSE for details. All rights reserved.
//

import XCTest
@testable import Perseus

// MARK: - The Testing Matter Application Delegate

@objc(TestingAppDelegate)
class TestingAppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        log.message("The app's test bundle start point...", .info)

        log.message("Launching with testing matter purpose", .info)
        log.message("[\(type(of: self))].\(#function)")

        return true
    }
}
