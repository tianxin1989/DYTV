//
//  UIColor-Extension.swift
//  TXDY
//
//  Created by 秦田新 on 2017/5/9.
//  Copyright © 2017年 秦田新. All rights reserved.
//

import UIKit

extension UIColor{
    convenience init(r: CGFloat,g: CGFloat,b: CGFloat) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
    }
    
    convenience init(r: CGFloat,g: CGFloat,b: CGFloat,a : CGFloat) {
        self.init(red:r/255.0, green:g/255.0, blue:b/255.0, alpha:a)
    }
    class func randomColor() -> UIColor {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
}
