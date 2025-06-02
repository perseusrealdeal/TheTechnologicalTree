//
//  T3Component.swift
//  T3Component
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Unlicensed Free Software. LICENSE for details.
//

struct T3Component {

    var text = "Hello, World!"

    init() {
        log.message("[\(type(of: self))].\(#function)")
    }
}
