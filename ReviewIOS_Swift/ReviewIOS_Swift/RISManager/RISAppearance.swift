//
//  RISAppearance.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2019/1/29.
//  Copyright © 2019 mine. All rights reserved.
//

import UIKit
extension AppDelegate{
    func appearance(application: UIApplication) {
        // MARK: - 设置nav样式
        let navBar = UINavigationBar.appearance()
        // MARK: - 设置标题文字颜色
        var navAttrs: [NSAttributedStringKey: Any] = Dictionary()
        navAttrs[NSAttributedStringKey.foregroundColor] = UIColor.black
        navAttrs[NSAttributedStringKey.font] = risNavigationBarTitleFont
        navBar.titleTextAttributes = navAttrs
        // MARK: - 修改导航栏自带返回按钮的颜色
        navBar.tintColor = risNavigationFontColor
        // MARK: - 设置背景颜色
        //        let bgImage = UIImage(named: "")
        //        navBar.setBackgroundImage(bgImage, for: .default)
        
        
        // MARK: - 设置tabbar样式
        let tabbarItem = UITabBarItem.appearance()
        // MARK: - 设置文字颜色
        var tabAttrs: [NSAttributedStringKey: Any] = Dictionary()
        tabAttrs[NSAttributedStringKey.foregroundColor] = risNavigationFontColor
        tabAttrs[NSAttributedStringKey.font] = risTabbarTitleNormalFont
        tabbarItem.setTitleTextAttributes(tabAttrs, for: .normal)
        
        var selTabAttrs: [NSAttributedStringKey: Any] = Dictionary()
        selTabAttrs[NSAttributedStringKey.foregroundColor] = risTabbarSelFontColor
        selTabAttrs[NSAttributedStringKey.font] = risTabbarTitleSelectedFont
        tabbarItem.setTitleTextAttributes(selTabAttrs, for: .selected)
    }
}
