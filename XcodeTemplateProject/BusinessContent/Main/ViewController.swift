//
//  ViewController.swift
//  XcodeTemplateProject
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

class ViewController: NSViewController {

    deinit { log.message("\(type(of: self)).deinit") }

    @IBOutlet private(set) weak var greetingsLabel: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.wantsLayer = true

        AppearanceService.register(stakeholder: self, selector: #selector(makeUp))
        localizeContent()
    }

    @objc private func makeUp() {
        log.message("[\(type(of: self))].\(#function), DarkMode: \(DarkMode.style)")

        greetingsLabel.textColor = .perseusYellow
        view.layer?.backgroundColor = NSColor.perseusBlue.cgColor
    }

    private func localizeContent() {
        // NSLocale.currentLocaleDidChangeNotification
        greetingsLabel.cell?.title = "greetings".localizedValue
    }
}
