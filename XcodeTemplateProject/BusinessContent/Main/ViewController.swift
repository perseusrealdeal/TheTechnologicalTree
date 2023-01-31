//
//  ViewController.swift
//  XcodeTemplateProject
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 Mikhail Zhigulin of Novosibirsk.
//
//  Licensed under the special license. See LICENSE file.
//  All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    deinit {
        #if DEBUG
        print("\(type(of: self)).deinit")
        #endif
    }

    @IBOutlet private(set) weak var greetingsLabel: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.wantsLayer = true

        AppearanceService.register(stakeholder: self, selector: #selector(makeUp))
        localizeContent()
    }

    @objc private func makeUp() {
        #if DEBUG
        print(">> [\(type(of: self))]." + #function + " DarkMode: \(DarkMode.style)")
        #endif

        greetingsLabel.textColor = .perseusYellow
        view.layer?.backgroundColor = NSColor.perseusBlue.cgColor
    }

    private func localizeContent() {
        // NSLocale.currentLocaleDidChangeNotification
        greetingsLabel.cell?.title = "greetings".localizedValue
    }
}
