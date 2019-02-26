//
//  RISEnum.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/10/25.
//  Copyright © 2017年 mine. All rights reserved.
//

import UIKit
// MARK: - 指南针方向枚举
enum CompassPoint {
    case North(param: String)  //北
    case Sourth //南
    case West  //西
    case East  //东
    // MARK: - 枚举中可以定义方法
    func showPoint() {
        print(self)
    }
    // MARK: - 嵌套枚举
    enum CompassError {
        case DeviceError
        case unknownError
    }
}
// MARK: - 枚举修改属性
enum SwitchState {
    case off
    case low
    case high
    mutating func next(){
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}


class RISEnum: NSObject {
    static let instance : RISEnum = RISEnum()
    private override init() {
        
    }
}
extension RISEnum{
    // MARK: - 测试枚举
    public func testEnum(){
        let compassPoint1 = CompassPoint.North(param: "error")
        let compassPoint2 : CompassPoint = .West
        compassPoint1.showPoint()
        compassPoint2.showPoint()
        print(compassPoint1.isIncalidPoint,compassPoint2.isIncalidPoint)
        compassPoint1.extensionFun()
        compassPoint2.extensionFun()
        // MARK: - 嵌套枚举
        let deviceError = CompassPoint.CompassError.DeviceError
        print("嵌套枚举" + "\(deviceError)")
        // MARK: - 修改枚举
        var modifyEnum = SwitchState.high
        modifyEnum.next()
        print("修改枚举：" + "\(modifyEnum)")
    }
}
// MARK: - 枚举扩展 - 可以添加属性
extension CompassPoint{
    public var isIncalidPoint : Bool{
        if case .North = self {
            return true
        }
        return false
    }
    func extensionFun() {
        print("枚举扩展方法")
    }
}
