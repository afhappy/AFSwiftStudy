//
//  JYAlertView.swift
//  sssss
//
//  Created by fa on 2019/1/21.
//  Copyright © 2019 af. All rights reserved.
//

import UIKit

class JYAlertView: UIView {

    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    var flag:Int = 0
    
    let bgView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    let btn: UIButton = {
        let btn = UIButton(type: UIButton.ButtonType.custom)
        btn.setTitle("确定", for: UIControl.State.normal)
        btn.setTitleColor(UIColor.red, for: UIControl.State.normal)
        btn.addTarget(self, action: #selector(click(_:)), for: UIControl.Event.touchUpInside)
        return btn
    }()
    
    let btn2: UIButton = {
        let btn = UIButton(type: UIButton.ButtonType.custom)
        btn.setTitle("确定", for: UIControl.State.normal)
        btn.setTitleColor(UIColor.red, for: UIControl.State.normal)
        btn.addTarget(self, action: #selector(click2(_:)), for: UIControl.Event.touchUpInside)
        return btn
    }()

    override init(frame: CGRect) {
        super.init(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        self.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.4)
        
        self.addSubview(bgView)
        bgView.frame = CGRect(x: 50, y: screenHeight / 2 - 50, width: screenWidth - 100, height: 100)
        
        bgView.addSubview(btn)
        btn.frame = CGRect(x: 0, y: bgView.frame.size.height - 30, width: bgView.frame.size.width / 2, height: 30)
        
        bgView.addSubview(btn2)
        btn2.frame = CGRect(x: bgView.frame.size.width / 2, y: bgView.frame.size.height - 30, width: bgView.frame.size.width / 2, height: 30)
        
        UIApplication.shared.keyWindow?.addSubview(self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc fileprivate func click(_ button: UIButton) {
        print("点击了自定义button!!!")
        self.removeFromSuperview()
    }
    @objc fileprivate func click2(_ button: UIButton) {
        print("点击了自定义button22222!!!")
        self.removeFromSuperview()
    }
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        flag = flag + 1;
        if flag == 2 {
            flag = 0
            if super.hitTest(point, with: event) == self.btn{
                click(btn)
                return btn
            }else if super.hitTest(point, with: event) == self.btn2 {
                click2(btn2)
                return btn2
            }
        }
        return self
    }

}
