//
//  AppDelegate.swift
//  XcodeTemplateProject
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 Mikhail Zhigulin of Novosibirsk.
//  Licensed under the special license. See LICENSE file.
//  All rights reserved.
//

import UIKit

// MARK: - The Business Matter Application Delegate

class AppDelegate: UIResponder { var window: UIWindow? }

extension AppDelegate: UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        #if DEBUG
        print(">> Launching with business matter purpose")
        print(">> [\(type(of: self))]." + #function)
        #endif
        
        window = UIWindow(frame: UIScreen.main.bounds)

        #if false
        // window!.rootViewController = ViewController()
        #else
        window!.rootViewController = MainViewController.storyboardInstance()
        #endif

        window!.makeKeyAndVisible()

        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {

        #if DEBUG
        print(">> [\(type(of: self))]." + #function)
        #endif

        UserPreferences.setBuildNumber()
        UserPreferences.setVersionNumber()

        UserPreferences.registerSettingsBundle(with: Settings.bundleParams)
    }

    func applicationWillResignActive(_ application: UIApplication) {
        #if DEBUG
        print(">> [\(type(of: self))]." + #function)
        #endif
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        #if DEBUG
        print(">> [\(type(of: self))]." + #function)
        #endif
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        #if DEBUG
        print(">> [\(type(of: self))]." + #function)
        #endif
    }

    func applicationWillTerminate(_ application: UIApplication) {
        #if DEBUG
        print(">> [\(type(of: self))]." + #function)
        #endif
    }
}
