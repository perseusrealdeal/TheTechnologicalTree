# <App's Name> — Xcode 14.2+

> This is the custom project template for a great macOS app.

[![Actions Status](https://github.com/perseusrealdeal/TheTechnologicalTree/actions/workflows/main.yml/badge.svg)](https://github.com/perseusrealdeal/TheTechnologicalTree/actions/workflows/main.yml)
[![Style](https://github.com/perseusrealdeal/TheTechnologicalTree/actions/workflows/swiftlint.yml/badge.svg)](https://github.com/perseusrealdeal/TheTechnologicalTree/actions/workflows/swiftlint.yml)
[![Version](https://img.shields.io/badge/Version-0.0.1-green.svg)](/CHANGELOG.md)
[![Platform macOS](https://img.shields.io/badge/Platform-macOS%2010.13+-orange.svg)](https://en.wikipedia.org/wiki/MacOS_version_history)
[![Xcode 14.2](https://img.shields.io/badge/Xcode-14.2+-red.svg)](https://en.wikipedia.org/wiki/Xcode)
[![Swift 5.0](https://img.shields.io/badge/Swift-5-orange.svg)](https://docs.swift.org/swift-book/RevisionHistory/RevisionHistory.html)
[![SDK UIKit](https://img.shields.io/badge/SDK-UIKit%20-blueviolet.svg)](https://developer.apple.com/documentation/uikit)
[![License](http://img.shields.io/:License-MIT-blue.svg)](/LICENSE)

## Dependencies

> Swift Package Manager.

[![ConsolePerseusLogger](http://img.shields.io/:ConsolePerseusLogger-latest-green.svg)](https://github.com/perseusrealdeal/ConsolePerseusLogger.git)
[![PerseusDarkMode](http://img.shields.io/:PerseusDarkMode-1.1.5-green.svg)](https://github.com/perseusrealdeal/PerseusDarkMode/tree/1.1.5)
[![PerseusUISystemKit](http://img.shields.io/:PerseusUISystemKit-1.1.4-green.svg)](https://github.com/perseusrealdeal/PerseusUISystemKit/tree/1.1.4)

## In brief > Idea to use, the Why

> DESC: Initial point of development process.<br/>

> TODO: Preview material.

## Approbation Matrix

> [Apple Apps Approbation](https://docs.google.com/document/d/1K2jOeIknKRRpTEEIPKhxO2H_1eBTof5uTXxyOm5g6nQ/edit?usp=sharing) environment. [CHANGELOG](/CHANGELOG.md) for details.

| macOS       | Version  | Result  | Details |
| ----------- | -------- | :-----: | ------- |
| High Sierra | 10.13.6  | ??      | - |
| Mojave      | 10.14.6  | ??      | - |
| Catalina    | 10.15.7  | ??      | - |
| Big Sur     | 11.7.10  | ??      | - |
| Monterey    | 12.7.6   | ??      | - |
| Ventura     | 13.7     | ??      | - |
| Sonoma      | 14.6.1   | ??      | - |
| Sequoia     | 15.nn.nn | ??      | - |

# Build system requirements

- [macOS Monterey 12.7.6+](https://apps.apple.com/by/app/macos-monterey/id1576738294) / [Xcode 14.2+](https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_14.2/Xcode_14.2.xip)
- AppKit SDK, macOS 10.13+, Swift 5

# Software requirements

- [Functional specification](/REQUIREMENTS.md)
- Translations [EN](/T3Project/Configuration/Translations/Translation_en.plist), [RU](/T3Project/Configuration/Translations/Translation_ru.plist)

# First-party software

- [Perseus Dark Mode](https://github.com/perseusrealdeal/PerseusDarkMode.git) / [1.1.5](https://github.com/perseusrealdeal/perseusdarkmode/releases/tag/1.1.5)
- [Perseus UI System Kit](https://github.com/perseusrealdeal/PerseusUISystemKit.git) / [1.1.4](https://github.com/perseusrealdeal/perseusuisystemkit/releases/tag/1.1.4)
- [Dark Mode switching functions](https://gist.github.com/perseusrealdeal/11b1bab47f13134832b859f49d9af706)

# Gifts

- [CurrentSystemLanguageGift.swift](https://gist.github.com/perseusrealdeal/98b082b136d574dd1b5aa760036dac8b)
- [JsonDataDictionaryGift.swift](https://gist.github.com/perseusrealdeal/918c25633122e64d51f363f00059f6f8)
- [JsonDataPrettyPrintedGift.swift](https://gist.github.com/perseusrealdeal/945c9050cb9f7a19e00853f064acacca)
- [LocalizedInfoPlistGift.swift](/PerseusTests/GiftsAndHelpers/LocalizedInfoPlistGift.swift)
- [LocalizedExpectationGift.swift](/PerseusTests/GiftsAndHelpers/LocalizedExpectationGift.swift)

# Third-party software

- Style [SwiftLint](https://github.com/realm/SwiftLint)
- Action [mxcl/xcodebuild@v3.3](https://github.com/mxcl/xcodebuild/releases/tag/v3.3.0)
- Action [cirruslabs/swiftlint-action@v1](https://github.com/cirruslabs/swiftlint-action/releases/tag/v1.0.0)

# Points taken into account

- Explicit start point placed in [main.swift](/T3Project/main.swift)
- Explicit app delegate [TestingAppDelegate.swift](/PerseusTests/TestingAppDelegate.swift) with test bundle
- Explicit app globals placed in [AppGlobals.swift](/T3Project/Configuration/AppGlobals.swift)
- Explicit app appearance placed in [AppAppearance.swift](/T3Project/Configuration/AppAppearance.swift)
- [Test plan](/PerseusTests/TestPlanStarted.xctestplan) configured for EN and RU as well
- SwiftLint shell script as a build phase (preinstallation required)
- Software requirements template docs

# License MIT

Copyright © 7531 - 7533 Mikhail A. Zhigulin of Novosibirsk

- The year starts from the creation of the world in the Star temple according to a Slavic calendar.
- September, the 1st of Slavic year.

[LICENSE](/LICENSE) for details.

# Editors, prepared by

> Mikhail A. Zhigulin of Novosibirsk
