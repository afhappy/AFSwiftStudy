//
//  RISSystemScreenConfig.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/11/2.
//  Copyright © 2017年 mine. All rights reserved.
//

import Foundation
import UIKit

// MARK: - 屏幕宽度
let RIScreenWidth = UIScreen.main.bounds.width
// MARK: - 屏幕高度
let RIScreenHeight = UIScreen.main.bounds.height

// MARK: - 导航栏高度
let risNavigationHeight = 44.0

// MARK: - 导航栏左侧按钮大小
let risLeftBarButtonFrame = CGRect(x: 0, y: 0, width: 60, height: risNavigationHeight)

// MARK: - 导航栏左侧按钮字体大小
let risLeftBarButtonFontSize = UIFont.systemFont(ofSize: 16)
// MARK: - navigation标题字体大小
let risNavigationBarTitleFont = UIFont.systemFont(ofSize: 18)

// MARK: - 导航栏字体颜色以及tabbar_normal字体颜色
let risNavigationFontColor = UIColor.init(r: 52, g: 52, b: 52)
// MARK: - tabbar_sel字体颜色
let risTabbarSelFontColor = UIColor.init(r: 199, g: 0, b: 103)
// MARK: - tabbar字体大小
let risTabbarTitleNormalFont = UIFont.systemFont(ofSize: 12)
let risTabbarTitleSelectedFont = UIFont.systemFont(ofSize: 12)

// MARK: - tableCell字体大小
let risTableViewCellTitleFont = UIFont.systemFont(ofSize: 14)

