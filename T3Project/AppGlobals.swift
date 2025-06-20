//
//  AppGlobals.swift
//  T3Project
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software.
//

import Cocoa
import ConsolePerseusLogger

struct AppGlobals {

    // MARK: - Constants

    static var SystemServices: (appName: String, title: String) {

        var calculated: (String, String)?

        if #available(macOS 10.14, *) {
            calculated = ("System Settings.app", "Settings...")
        } else {
            calculated = ("System Preferences.app", "Preferences...")
        }

        return calculated!
    }

    // MARK: - System Services

    static let ud = UserDefaults.standard
    static let nc = NotificationCenter.default

    // MARK: - Custom Services

    // MARK: - Init

    init() {
        log.message("[AppGlobals].\(#function)")

        // Init custom services here.

    }

    // MARK: - Common system relative functions

    static func clickWebLink(string link: String) {

        log.message("[\(type(of: self))].\(#function)")

        guard let url = NSURL(string: link) as URL? else {
            log.message("[\(type(of: self))].\(#function)", .error)
            return
        }

        _ = NSWorkspace.shared.open(url) ?
            log.message("[\(type(of: self))].\(#function) - Web browser opened.") :
            log.message("[\(type(of: self))].\(#function) - Web browser not opened.")
    }

    static func makeTheAppRun(_ name: String?) {

        /* One way to open System options app */

        let mger = FileManager.default

        guard
            let theAppName = name,
            let pathFirst = mger.urls(for: .applicationDirectory, in: .systemDomainMask).first
        else {
            return
        }

        /* Another way to open System options app */
        // guard let pathURL = URL(string: AppGlobals.openSystemApp) else { return }

        NSWorkspace.shared.open(pathFirst.appendingPathComponent(theAppName))
    }

    static func quitTheApp() {
        log.message("[\(type(of: self))].\(#function)", .info)

        // Instructions before quit.

        app.terminate(appDelegate)
    }
}
