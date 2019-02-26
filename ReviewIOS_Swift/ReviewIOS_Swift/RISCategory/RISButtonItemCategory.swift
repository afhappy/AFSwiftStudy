//
//  RISButtonItemCategory.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/11/2.
//  Copyright © 2017年 mine. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem{
    public class func leftBarButtonItem(rect: CGRect?, imageName: String?, title: String?, target: Any?, action: Selector) -> [UIBarButtonItem]{
        let btnRect = rect==nil ? risLeftBarButtonFrame : rect
        let leftBtn = UIButton.customButton(rect: btnRect!, title: title, titleHighlight: nil, imageName: imageName, imageNameHighLight: nil, textColor: risNavigationFontColor, textColorHighLight: nil, font: risLeftBarButtonFontSize, contentAlignment: UIControlContentHorizontalAlignment.left, target: target, action: action)
        let leftButtonItem = UIBarButtonItem(customView: leftBtn)
        
        let spaceLeft = UIBarButtonItem(barButtonSystemItem: .fixedSpace, target: nil, action: nil)
        spaceLeft.width = 15
        return [leftButtonItem]
    }
}

