//
//  Logger.swift
//  ios-logger
//
//  Created by OkuderaYuki on 2017/04/04.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import Foundation

/// カスタムログ
class Logger: NSObject {
    
    /// デバッグ情報
    static func debug(message: String, function: String = #function, file: String = #file, line: Int = #line) {
        Logger.write(loglevel: "[DEBUG]", message: message, function: function, file: file, line: line)
    }
    
    /// 一般情報
    static func info(message: String, function: String = #function, file: String = #file, line: Int = #line) {
        Logger.write(loglevel: "[INFO]", message: message, function: function, file: file, line: line)
    }
    
    /// 警告
    static func warning(message: String, function: String = #function, file: String = #file, line: Int = #line) {
        Logger.write(loglevel: "[WARNING]", message: message, function: function, file: file, line: line)
    }
    
    /// エラー
    static func error(message: String, function: String = #function, file: String = #file, line: Int = #line) {
        Logger.write(loglevel: "[ERROR]", message: message, function: function, file: file, line: line)
    }
    
    /// ログ出力
    static func write(loglevel: String, message: String, function: String, file: String, line: Int) {
        
        #if DEBUG
            let now = Date()
            let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "ja_JP")
            dateFormatter.timeStyle = .medium
            dateFormatter.dateStyle = .medium
            let nowdate = dateFormatter.string(from: now)
            
            var filename = file
            if let match = filename.range(of: "[^/]*$", options: .regularExpression) {
                filename = filename.substring(with: match)
            }
            print("[\(nowdate)] \(function) @\(filename)(line \(line)) \(loglevel) => \"\(message)\" ")
        #endif
    }
}
