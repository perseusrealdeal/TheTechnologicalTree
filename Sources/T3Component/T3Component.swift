//
//  T3Component.swift
//  T3Component
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software. LICENSE for details.
//

import Foundation

public struct T3Component {

    var text = "Hello, World!"
    var list = [MyDataListItem]()

    init() {
        log.message("[\(type(of: self))].\(#function)")
    }

    mutating func loadData(_ name: String = "Data") -> Bool {

        guard
            let path = Bundle.module.url(forResource: name, withExtension: "json"),
            let data = try? Data(contentsOf: path),
            let json = try? JSONDecoder().decode([MyDataListItem].self, from: data)
        else {
            log.message("Failed to load package data!", .error)
            return false
        }

        list = json

        return true
    }
}

public struct MyDataListItem: CustomStringConvertible, Decodable {

    let title: String
    let number: DataNumberID
    let about: String

    public var description: String {
        return
"""
title  : \(title)
number : \(number)
about  : \(about)
"""
    }
}

public enum DataNumberID: Int, CustomStringConvertible, Decodable {

    public var description: String {
        switch self {
        case .two:
            return "It's the second."
        case .one:
            return "It's the first."
        }
    }

    case two = 2
    case one = 1
}
