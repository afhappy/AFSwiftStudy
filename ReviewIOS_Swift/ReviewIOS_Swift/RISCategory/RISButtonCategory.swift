//
//  RISButtonCategory.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/11/2.
//  Copyright © 2017年 mine. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    public class func customButton(rect: CGRect, title: String?, titleHighlight: String?, imageName: String?, imageNameHighLight: String?, textColor: UIColor?, textColorHighLight: UIColor?, font: UIFont?, contentAlignment: UIControlContentHorizontalAlignment? ,target: Any?, action: Selector) -> UIButton{
        let btn = UIButton(type: .custom)
        btn.frame = rect
        if let title = title{
            btn.setTitle(title, for: .normal)
            btn.setTitle(titleHighlight, for: .highlighted)
            btn.setTitleColor(textColor, for: .normal)
            btn.setTitleColor(textColorHighLight, for: .highlighted)
            btn.titleLabel?.font = font
//            btn.titleLabel?.textAlignment = textAlignment!
            btn.contentHorizontalAlignment = contentAlignment!
        }
        if let imageName = imageName{
            btn.setImage(UIImage(named: imageName), for: .normal)
        }
        btn.addTarget(target, action: action, for: .touchUpInside)
        return btn
    }
}
