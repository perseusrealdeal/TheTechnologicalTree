//
//  CurrentSystemLanguageGift.swift
//  Gifts
//
//  Just a gift, tested with Swift 4.2 compiler.
//

import Foundation

extension String {

    static var currentSystemLanguage: (langCode: String, localeCode: String)? {

        let currentLocale = Locale(identifier: Locale.preferredLanguages.first!)

        guard
            let langCode = currentLocale.languageCode
        else {
            return nil
        }

        var localeCode = langCode

        if let scriptCode = currentLocale.scriptCode {
            localeCode = "\(langCode)-\(scriptCode)"
        } else if let regionCode = currentLocale.regionCode {
            localeCode = "\(langCode)-\(regionCode)"
        }

        return (langCode, localeCode)
    }
}
