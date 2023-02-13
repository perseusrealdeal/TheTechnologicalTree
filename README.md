# macOS App — Xcode 10.1

> This is the Xcode 10.1 project configured to make easy start for developing macOS app.

[![Platform macOS](https://img.shields.io/badge/platform-macOS%2010.10+-orange.svg)](https://en.wikipedia.org/wiki/MacOS_version_history)
[![Swift 4.2](https://img.shields.io/badge/Swift-4.2-orange.svg)](https://docs.swift.org/swift-book/RevisionHistory/RevisionHistory.html)
[![SDK UIKit](https://img.shields.io/badge/SDK-UIKit%20-blueviolet.svg)](https://developer.apple.com/documentation/uikit)
[![License](http://img.shields.io/:License-MIT-blue.svg)](/LICENSE)

Idea to use: 

`step 1:` make a copy of repository as a template

`step 2:` create a pull request

`step 3:` update the branch for the project specifics

`step 4:` merge a pull request

# Requirements

- [macOS High Sierra 10.13.6](https://apps.apple.com/us/app/macos-high-sierra/id1246284741?ls=1)
- [Xcode 10.1](https://stackoverflow.com/questions/10335747/how-to-download-xcode-dmg-or-xip-file)

# First-party software

- [Perseus Dark Mode](https://github.com/perseusrealdeal/PerseusDarkMode.git) / [1.1.3](https://github.com/perseusrealdeal/perseusdarkmode/releases/tag/1.1.3)
- [Perseus UI System Kit](https://github.com/perseusrealdeal/PerseusUISystemKit.git) / [1.1.2](https://github.com/perseusrealdeal/perseusuisystemkit/releases/tag/1.1.2)
- [Dark Mode switching functions](https://gist.github.com/perseusrealdeal/11b1bab47f13134832b859f49d9af706)

# Third-party software

- [SwiftLint](https://github.com/realm/SwiftLint) / [0.31.0: Busy Laundromat](https://github.com/realm/SwiftLint/releases/tag/0.31.0) for macOS High Sierra

# Points taken into account

- Explicit start point placed in main.swift file
- Explicit app delegate with test bundle
- Top menu with changing title of menu item "Preferences... / Settings..."
- Preferences\Settings screen with Dark Mode option
- Localization test schemes for EN and RU as well
- SwiftLint shell script
- Preconfigured GitHub CI, .gitignore, README, and LICENSE

# License
- All files from this repository is under license based on MIT
- Have a look at [LICENSE](/LICENSE) for details

# Editors, prepared by
Mikhail Zhigulin, mzhigulin@gmail.com
