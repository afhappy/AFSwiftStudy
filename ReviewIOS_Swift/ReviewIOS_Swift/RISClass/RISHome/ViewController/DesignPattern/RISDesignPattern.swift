//
//  RISDesignPattern.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/10/25.
//  Copyright © 2017年 mine. All rights reserved.
//

import UIKit

// MARK: - 代理
@objc protocol RISDesignDelegate : class {
    // MARK: - 必须实现的方法
    func requestDelegateFun(param : String)
    // MARK: - 可选方法，protocol前面也需要添加@objc
    @objc optional func optionalDelegateFun(param : String)
}

class RISDesignPattern: NSObject {
    
    weak var designDelegate : RISDesignDelegate?
    
    // MARK: - 单例
    static let instance : RISDesignPattern = RISDesignPattern()
    private override init() {
        
    }
}

extension RISDesignPattern{
    // MARK: - 发送通知
    public func postNotification(){
        let noticeInfo = Notification.init(name: Notification.Name.Task.TestNotice, object: self, userInfo: ["name" : "王五", "age" : "20"])
        NotificationCenter.default.post(noticeInfo)
    }
    // MARK: - 代理
    public func achieveDelegate(){
        designDelegate?.requestDelegateFun(param: "代理必须实现的方法")
        designDelegate?.optionalDelegateFun!(param: "代理可选实现的方法")
    }
}
