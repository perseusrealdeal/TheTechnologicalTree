//
//  LogReport.swift
//  Gifts
//
//  Created by Mikhail A. Zhigulin of Novosibirsk.
//
//  Just a gift.
//  <https://gist.github.com/PerseusRealDeal/9a4118301b59d43969d8edf5ebc3a571>
//
//  Unlicensed Free Software. For more information, <http://unlicense.org/>
//

import Foundation

public class LogReport: NSObject {

    public var text: String { report }

    @objc dynamic public var lastMessage: String = "" {
        didSet {
            let count = report.count
            if count > LIMIT {
                report = report.dropFirst(count - LIMIT).description

                if let position = report.range(of: newline)?.upperBound {
                    report.removeFirst(position.utf16Offset(in: report)-2)
                }
            }

            report.append(lastMessage + newline)
        }
    }

    private var report = ""

    private let LIMIT = 1000
    private let newline = "\r\n--\r\n"
}
