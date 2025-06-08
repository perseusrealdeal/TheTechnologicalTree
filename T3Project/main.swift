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
typealias applog = ConsolePerseusLogger.PerseusLogger // For test bundle, log for main.
typealias dmlog = PerseusDarkMode.PerseusLogger
// swiftlint:enable type_name

// MARK: - Log Report

typealias LogLevel = ConsolePerseusLogger.PerseusLogger.Level

func report(_ text: String, _ type: LogLevel, _ localTime: LocalTime, _ owner: PIDandTID) {
    report.lastMessage = "[\(localTime.date)] [\(localTime.time)]\r\n> \(text)"
}

let report = LogReport()
log.customActionOnMessage = report(_:_:_:_:)

// MARK: - Logger

// log.turned = .off
// dmlog.turned = .off

var loadedInfo = ""

if let path = Bundle.main.url(forResource: "CPLConfig", withExtension: "json") {
    if log.loadConfig(path), dmlog.loadConfig(path) {
        loadedInfo = "Options successfully loaded!"
    } else {
        loadedInfo = "Failed to load options!"
    }
} else {
    loadedInfo = "Failed to create URL!"
}

log.message(loadedInfo)
log.message("The app's start point...", .info)

// MARK: - Make the app run

let appDelegateClass: AnyClass = NSClassFromString("TestingAppDelegate") ?? AppDelegate.self
let delegateClassName = NSStringFromClass(appDelegateClass)

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName)
