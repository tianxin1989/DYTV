//
//  UIBarButtonItem+Extention.swift
//  TXDY
//
//  Created by 秦田新 on 2017/5/5.
//  Copyright © 2017年 秦田新. All rights reserved.
//

import UIKit

// MARK: - 自定义BarButtonItem
extension UIBarButtonItem{
    //便利构造函数 1.convenience开头  2.在构造函数中必须明确调用一个设计的构造函数(self)
    convenience init(imageName : String, highImageName : String = "" ,size : CGSize = CGSize.zero){
        //创建UIButton
        let btn = UIButton()
        //设置btn的图片
        btn.setImage(UIImage(named: imageName), for: UIControlState())
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        //设置btn的尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        }else{
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        self.init(customView: btn)
    }
}
