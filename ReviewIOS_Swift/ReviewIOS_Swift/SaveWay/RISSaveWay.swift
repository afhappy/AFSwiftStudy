//
//  RISSaveWay.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/10/26.
//  Copyright © 2017年 mine. All rights reserved.
//

import UIKit

class RISSaveWay: NSObject {
    static let instance : RISSaveWay = RISSaveWay()
    private override init() {
        
    }
}
// MARK: - NSUserDefault - 实际是明文存储在plist中，敏感数据容易被破解，存放的一定是不可变的
extension RISSaveWay{
    // MARK: - 存储
    func setUserDefault(key: String, value: Any?) {
        if (value != nil) {
            UserDefaults.standard.removeObject(forKey: key)
        }else{
            UserDefaults.standard.set(value, forKey: key)
            UserDefaults.standard.synchronize()
        }
    }
    // MARK: - 通过对应key获取userdefault
    func getUserDefault(key: String) -> Any? {
        return UserDefaults.standard.value(forKey:key)
    }
    // MARK: - 通过对应key移除存储的value
    func removeUserDefault(key: String?) {
        if (key != nil) {
            UserDefaults.standard.removeObject(forKey: key!)
            UserDefaults.standard.synchronize()
        }
    }
}
// MARK: - Plist
extension RISSaveWay{
    fileprivate func getPlistPath() -> AnyObject{
        let plistPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
        return plistPath as AnyObject
    }
    func writeDataToPlist() {
        let folderPath = getPlistPath().appendingPathComponent("newsData") as String
        print(folderPath)
        
        let fileManage = FileManager.default
        let dbExist = fileManage.fileExists(atPath: folderPath)
        if !dbExist{
            // MARK: - 创建文件夹
            try! fileManage.createDirectory(atPath: folderPath, withIntermediateDirectories: true, attributes: nil)
            // MARK: - 创建文件
            let filePath = folderPath + "/test.txt"
            let test = "test"
            try! test.write(to: URL(fileURLWithPath: filePath), atomically: true, encoding: .utf8)
        }
    }
    
}
// MARK: - Sqlite3
extension RISSaveWay{
    func testSqlite3() {
        
    }
}
// MARK: - Archive
extension RISSaveWay{
    func testArchive() {
        
    }
}
// MARK: - SandBox
extension RISSaveWay{
    func testSandBox() {
        
    }
}
