//
//  TestingAppDelegate.swift
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
