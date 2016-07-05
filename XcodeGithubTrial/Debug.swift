//
//  Debug.swift
//  Sample
//
//  Created by g08m11 on 2015/09/18.
//  Copyright (c) 2015年 Bloc. All rights reserved.
//

import Foundation

struct Debug {
  static func debugInfoPlist(file: String = #file, function: String = #function, line: Int = #line) {
    var str = ""
    for (k, v) in NSBundle.mainBundle().infoDictionary! {
      str += "\(k) : \(v)\n"
    }
    log("\(str)", file: file, function: function,  line: line)
  }
  
  static func log(message: AnyObject,
    function: String = #function,
    file: String = #file,
    line: Int = #line) {
      #if DEBUG
        var str = "\(message)\n-- FileName: \(file)\n-- Method: \(function)\n-- Line: \(line)"
        str = str.stringByReplacingOccurrencesOfString("\n", withString: "\n  ")
        print("\n*** \(str)\n", terminator: "")
      #endif
  }
}
