//
//  main.swift
//  T3Project
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software.
//

import UIKit
import ConsolePerseusLogger

import class PerseusDarkMode.PerseusLogger

// swiftlint:disable type_name
typealias dmlog = PerseusDarkMode.PerseusLogger
// swiftlint:enable type_name

// MARK: - Logger

log.level = .info
log.message("The app's start point...", .info)

// MARK: - Make the app run

let appDelegateClass: AnyClass = NSClassFromString("TestingAppDelegate") ?? AppDelegate.self
let delegateClassName = NSStringFromClass(appDelegateClass)

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName)
