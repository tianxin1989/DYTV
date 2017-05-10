//
//  NSDate-Extension.swift
//  TXDY
//
//  Created by 秦田新 on 2017/5/9.
//  Copyright © 2017年 秦田新. All rights reserved.
//

import Foundation

extension Date{
  static  func getCurrentTime() -> String {
    let  nowDate = Date()
    let  interval = Int(nowDate.timeIntervalSince1970)
    return "\(interval)"
    }
}
