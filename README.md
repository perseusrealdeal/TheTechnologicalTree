# <Component's Name> — Xcode 10.1+

> This is the custom template for a great macOS/iOS component in Swift. <br/>
> Use command `swift package generate-xcodeproj` to generate Xcode poject file.

[![Actions Status](https://github.com/perseusrealdeal/XcodeTemplateProject/actions/workflows/main.yml/badge.svg)](https://github.com/perseusrealdeal/XcodeTemplateProject/actions)
![Version](https://img.shields.io/badge/Version-0.0.1-green.svg)
[![Pod](https://img.shields.io/badge/Pod-0.0.1-informational.svg)](/XcodeTemplateProject.podspec)
[![Platforms](https://img.shields.io/badge/Platforms-iOS%209.3+_|_macOS%2010.9+-orange.svg)](https://en.wikipedia.org/wiki/IOS_9)
[![Xcode 10.1](https://img.shields.io/badge/Xcode-10.1+-red.svg)](https://en.wikipedia.org/wiki/Xcode)
[![Swift 4.2](https://img.shields.io/badge/Swift-4.2-red.svg)](https://docs.swift.org/swift-book/RevisionHistory/RevisionHistory.html)
[![CI Script](http://img.shields.io/:CI-Script-blue.svg)](/.github/workflows/main.yml)
[![License](http://img.shields.io/:License-MIT-blue.svg)](/LICENSE)

## Integration Capabilities

[![Standalone](https://img.shields.io/badge/Standalone%20-available-informational.svg)](/XcodeTemplateProjectSingle.swift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/Carthage/Carthage)
[![CocoaPods manager](https://img.shields.io/badge/CocoaPods-compatible-4BC51D.svg)](https://cocoapods.org)
[![Swift Package Manager compatible](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-4BC51D.svg)](https://github.com/apple/swift-package-manager)

## In brief > Idea to use, the Why

> DESC: Initial point of development process. [CHANGELOG](/CHANGELOG.md) for details.

# Requirements

- [macOS High Siera 10.13.6+](https://apps.apple.com/us/app/macos-high-sierra/id1246284741?ls=1) / [Xcode 10.1+](https://stackoverflow.com/questions/10335747/how-to-download-xcode-dmg-or-xip-file)
- iOS: 9.3+, UIKit SDK
- macOS: 10.9+, AppKit SDK
- Swift: 4.2

# First-party software

- [PerseusLogger](https://gist.github.com/perseusrealdeal/df456a9825fcface44eca738056eb6d5)

# Third-party software

- [SwiftLint Shell Script Runner](/SucceedsPostAction.sh)
- [SwiftLint](https://github.com/realm/SwiftLint) / [0.31.0: Busy Laundromat](https://github.com/realm/SwiftLint/releases/tag/0.31.0) for macOS High Sierra
- CI tool [mxcl/xcodebuild@v1.9.2](https://github.com/mxcl/xcodebuild/tree/v1.9.2)

To run SwiftLint from Xcode project put the following script in the Build Phases as a Run Script.

```ruby
if [ \"${CONFIGURATION}\" = \"Debug\" ]; then
if which swiftlint >/dev/null; then
swiftlint --config \"$SRCROOT/.swiftlint.yml\"
else
echo \"warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint\"
exit 1
fi
fi
```

# Points taken into account

- Preconfigured Swift Package [Package.swift](/Package.swift) file
- Preconfigured CocoaPod config [XcodeTemplateProject.podspec](/XcodeTemplateProject.podspec) file 
- Preconfigured SwiftLint config [.swiftlint.yml](/.swiftlint.yml) file
- Preconfigured GitHub CI [main.yml](/.github/workflows/main.yml) file 
- Preconfigured GitHub config [.gitignore](/.gitignore) file
- Light-weight [logger](/Sources/XcodeTemplateProject/PerseusLogger.swift)

[How-to-Carthage](https://gist.github.com/perseusrealdeal/8951b10f4330325df6347aaaa79d3cf2)
[How-to-CocoaPod](https://gist.github.com/perseusrealdeal/c4327dbe9d930fb10e0fa51c8dedb5ce)

# License MIT

Copyright © 7531 - 7533 Mikhail A. Zhigulin of Novosibirsk

- The year starts from the creation of the world according to a Slavic calendar.
- September, the 1st of Slavic year.

[LICENSE](/LICENSE) for details.

# Editors, prepared by

> Mikhail A. Zhigulin of Novosibirsk
