//
//  TestingAppDelegate.swift
//  PerseusTests
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software.
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
