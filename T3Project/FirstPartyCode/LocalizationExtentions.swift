//
//  LocalizationExtentions.swift
//  T3Project
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software.
//

import Foundation

extension String {
    var localizedValue: String { return NSLocalizedString(self, comment: "") }
}
