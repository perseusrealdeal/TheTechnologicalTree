//
//  MainWindowController.swift, MainWindowController.storyboard
//  The Technological Tree
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

import Cocoa

class MainWindowController: NSWindowController {

    deinit { log.message("\(type(of: self)).deinit") }

    private lazy var preferencesController = { () -> NSWindowController in

        let sb = NSStoryboard(name: NSStoryboard.Name("OptionsWindowController"), bundle: nil)
        let screen = sb.instantiateInitialController() as? NSWindowController

        return screen ?? NSWindowController()
    }()

    @IBAction func showPreferences(_ sender: NSMenuItem) {
        preferencesController.showWindow(sender)
    }

    override func windowDidLoad() {
        super.windowDidLoad()
    }
}

extension MainWindowController {

    class func storyboardInstance() -> MainWindowController {

        let storyboard = NSStoryboard(name: String(describing: self), bundle: nil)
        let screen = storyboard.instantiateInitialController() as? MainWindowController

        // Do default setup; don't set any parameter causing loadView up, breaks unit tests

        // screen?.modalTransitionStyle = UIModalTransitionStyle.partialCurl
        // screen?.view.backgroundColor = UIColor.yellow

        return screen ?? MainWindowController()
    }
}
