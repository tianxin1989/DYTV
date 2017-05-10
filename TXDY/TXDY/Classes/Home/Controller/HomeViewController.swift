//
//  HomeViewController.swift
//  TXDY
//
//  Created by 秦田新 on 2017/5/5.
//  Copyright © 2017年 秦田新. All rights reserved.
//

import UIKit

private let kTitleViewH : CGFloat = 40

class HomeViewController: UIViewController {
    
    fileprivate lazy var pageTitleView : PageTitleView = {[weak self] in
        let titleFrame = CGRect(x: 0, y: kStatusBarH + kNavigationBarH, width: kScreenW, height: kTitleViewH)
        let titles = ["推荐","游戏","娱乐","趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        titleView.delegate = self as? PageTitleViewDelegate
        return titleView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


extension HomeViewController{
    fileprivate func  setUpUI(){
        automaticallyAdjustsScrollViewInsets = false
        
        setUpNavgationBar()
        
        view.addSubview(pageTitleView)
    }
    
    func setUpNavgationBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName:"logo")
        
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
        
        
        
        
        
    }
}

