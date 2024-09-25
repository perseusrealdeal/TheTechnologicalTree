//
//  AppAppearance.swift
//  T3Project
//
//  Created by Mikhail Zhigulin in 7532.
//
//  Copyright © 7532 - 7533 Mikhail A. Zhigulin of Novosibirsk
//
//  The year starts from the creation of the world in the Star temple
//  according to a Slavic calendar. September, the 1st of Slavic year.
//
//  See LICENSE for details. All rights reserved.
//

import AppKit

import PerseusUISystemKit
import PerseusDarkMode

public protocol CustomColorsProtocol {

    static var labelCustomColor: NSColor { get }
}

extension NSColor: CustomColorsProtocol {

    public static var labelCustomColor: NSColor {
        return AppearanceService.shared.style == .light ?
            rgba255(255, 255, 255, 0.9) : rgba255(235, 235, 245, 0.6)
    }
}
