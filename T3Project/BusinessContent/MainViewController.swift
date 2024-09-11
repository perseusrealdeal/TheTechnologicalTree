//
//  ViewController.swift, MainViewController.storyboard
//  T3Project
//
//  Created by Mikhail Zhigulin in 7531.
//
//  Copyright © 7531 - 7533 Mikhail A. Zhigulin of Novosibirsk
//
//  The year starts from the creation of the world according to a Slavic calendar.
//  September, the 1st of Slavic year.
//
//  See LICENSE for details. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    deinit { log.message("\(type(of: self)).deinit") }

    @IBOutlet private(set) weak var greetingsLabel: UILabel!
    @IBOutlet private weak var actualDarkModeValueLabel: UILabel!

    class func storyboardInstance() -> MainViewController {

        let storyboard = UIStoryboard(name: String(describing: self), bundle: nil)
        let screen = storyboard.instantiateInitialViewController() as? MainViewController

        // Do default setup; don't set any parameter causing loadView up, breaks unit tests
        screen?.modalTransitionStyle = UIModalTransitionStyle.partialCurl
        // screen?.view.backgroundColor = UIColor.yellow
        return screen ?? MainViewController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        guard value(forKey: "storyboardIdentifier") != nil else { return }

        AppearanceService.register(stakeholder: self, selector: #selector(makeUp))
        localizeContent()
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        if #available(iOS 13.0, *) {
            AppearanceService.processTraitCollectionDidChange(previousTraitCollection)
        }
    }

    @objc private func makeUp() {
        log.message("[\(type(of: self))].\(#function)")

        actualDarkModeValueLabel.text = "^_^ \(AppearanceService.DarkModeUserChoice)"

        // self.view.backgroundColor = DarkMode.style == .light ? .yellow : .gray
        self.view.backgroundColor = UIColor.perseusBlue
    }

    private func localizeContent() {
        // NSLocale.currentLocaleDidChangeNotification
        greetingsLabel.text = "greetings".localizedValue
    }
}
