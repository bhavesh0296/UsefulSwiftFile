//
//  Logger.swift
//

import Foundation

enum LogLevel: Int {

    case verbose = 1
    case debug = 2
    case info = 3
    case warning = 4
    case error = 5

    var emoji: String {
        switch self {
        case .verbose: return "➡️"
        case .debug:   return "❓"
        case .info:    return "ℹ️"
        case .warning: return "⚠️"
        case .error:   return "❌"
        }
    }
}

extension LogLevel: Comparable {
    static func < (lhs: LogLevel, rhs: LogLevel) -> Bool {
        return lhs.rawValue < rhs.rawValue
    }
}

struct Logger {

    static let minimumLogLevel: LogLevel = .verbose

    static func log(
        logLevel: LogLevel,
        file: String = #file,
        line: Int = #line,
        function: StaticString = #function,
        _ items: Any...
    ) {
        
        #if DEBUG
        if logLevel >= minimumLogLevel {
            let output = items.map { "\($0)" }.joined(separator: " ")
            let fileName = (file as NSString).lastPathComponent
            print("\(logLevel.emoji) – \(fileName):\(line) – \(function) – \(output)")
        }
        #endif
    }
}
