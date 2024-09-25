# <App's Name> — Xcode 10.1+

> This is the custom project template for a great iOS app in Swift.

[![Actions Status](https://github.com/perseusrealdeal/TheTechnologicalTree/actions/workflows/main.yml/badge.svg)](https://github.com/perseusrealdeal/XcodeTemplateProject/actions)
[![Style](https://github.com/perseusrealdeal/TheTechnologicalTree/actions/workflows/swiftlint.yml/badge.svg)](https://github.com/perseusrealdeal/TheTechnologicalTree/actions/workflows/swiftlint.yml)
[![Version](https://img.shields.io/badge/Version-0.0.1-green.svg)](/CHANGELOG.md)
[![Platform iOS 9](https://img.shields.io/badge/Platform-iOS%209.3+-blue.svg)](https://en.wikipedia.org/wiki/IOS_9)
[![Xcode 10.1](https://img.shields.io/badge/Xcode-10.1+-red.svg)](https://en.wikipedia.org/wiki/Xcode)
[![Swift 4.2](https://img.shields.io/badge/Swift-4.2-orange.svg)](https://docs.swift.org/swift-book/RevisionHistory/RevisionHistory.html)
[![SDK UIKit](https://img.shields.io/badge/SDK-UIKit%20-blueviolet.svg)](https://developer.apple.com/documentation/uikit)
[![License](http://img.shields.io/:License-MIT-blue.svg)](/LICENSE)

## Dependencies

[![PerseusDarkMode](http://img.shields.io/:PerseusDarkMode-1.1.5-green.svg)](https://github.com/perseusrealdeal/PerseusDarkMode/tree/1.1.5)
[![PerseusUISystemKit](http://img.shields.io/:PerseusUISystemKit-1.1.4-green.svg)](https://github.com/perseusrealdeal/PerseusUISystemKit/tree/1.1.4)

## In brief > Idea to use, the Why

> DESC: Initial point of development process.<br/>

> TODO: Preview material.

## Approbation Matrix

> [Apple Apps Approbation](https://docs.google.com/document/d/1K2jOeIknKRRpTEEIPKhxO2H_1eBTof5uTXxyOm5g6nQ/edit?usp=sharing) environment. [CHANGELOG](/CHANGELOG.md) for details.

| iOS    | Simulator | Device                | Result  | Details |
| ------ | --------- | --------------------- | :-----: | ------- |
| iOS 9  |           |                       | ??      | - |
| iOS 10 |           |                       | ??      | - |
| iOS 11 |           |                       | ??      | - |
| iOS 12 | -         | iPad Air / iOS 12.5.7 | ok      | - |
| iOS 13 |           |                       | ??      | - |
| iOS 14 |           |                       | ??      | - |
| iOS 15 |           |                       | ??      | - |
| iOS 16 |           |                       | ??      | - |
| iOS 17 |           |                       | ??      | - |
| iOS 18 |           |                       | ??      | - |

# Build system requirements

- [macOS High Sierra 10.13.6+](https://apps.apple.com/us/app/macos-high-sierra/id1246284741?ls=1) / [Xcode 10.1+](https://stackoverflow.com/questions/10335747/how-to-download-xcode-dmg-or-xip-file)
- UIKit SDK, iOS 9.3+ (12.0 by default), Swift 4.2

# Software requirements

- [Functional specification](/REQUIREMENTS.md)
- Translations [EN](/T3Project/Configuration/Translations/Translation_en.plist), [RU](/T3Project/Configuration/Translations/Translation_ru.plist)

# First-party software

- [Perseus Dark Mode](https://github.com/perseusrealdeal/PerseusDarkMode.git) / [1.1.5](https://github.com/perseusrealdeal/perseusdarkmode/releases/tag/1.1.5)
- [Perseus UI System Kit](https://github.com/perseusrealdeal/PerseusUISystemKit.git) / [1.1.4](https://github.com/perseusrealdeal/perseusuisystemkit/releases/tag/1.1.4)
- [Dark Mode switching functions](https://gist.github.com/perseusrealdeal/11b1bab47f13134832b859f49d9af706)
- [PerseusLogger](https://gist.github.com/perseusrealdeal/df456a9825fcface44eca738056eb6d5)

# Third-party software

- [SwiftLint](https://github.com/realm/SwiftLint) / [0.31.0: Busy Laundromat](https://github.com/realm/SwiftLint/releases/tag/0.31.0) for macOS High Sierra
- CI tool [mxcl/xcodebuild@v1.9.2](https://github.com/mxcl/xcodebuild/tree/v1.9.2)

# Points taken into account

- Explicit start point placed in [main.swift](/T3Project/main.swift)
- Explicit app globals within [AppGlobals.swift](/T3Project/Configuration/AppGlobals.swift)
- Explicit user preferences logic within [UserPreferences.swift](/T3Project/Configuration/UserPreferences.swift)
- Explicit app delegate within test bundle [TestingAppDelegate.swift](PerseusTests/TestingAppDelegate.swift)
- Settings bundle with Dark Mode option and release number sections
- Localization test schemes for EN and RU as well
- SwiftLint shell script as a build phase (preinstallation required)
- Software requirements template docs

# License MIT

Copyright © 7531 - 7533 Mikhail A. Zhigulin of Novosibirsk

- The year starts from the creation of the world in the Star temple according to a Slavic calendar.
- September, the 1st of Slavic year.

[LICENSE](/LICENSE) for details.

# Editors, prepared by

> Mikhail A. Zhigulin of Novosibirsk
