//
//  RISNewsModel.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/10/30.
//  Copyright © 2017年 mine. All rights reserved.
//

import UIKit

class RISNewsModel: NSObject, NSCoding {
    var id: Int?
    var title: String?
    var content: String?
    var time: Int?
    var scanNum: Int?
    // MARK: - 归档
    func encode(with aCoder: NSCoder) {
        aCoder.encode(id, forKey: "id")
        aCoder.encode(title, forKey: "title")
        aCoder.encode(content, forKey: "content")
        aCoder.encode(time, forKey: "time")
        aCoder.encode(scanNum, forKey: "scanNum")
    }
    // MARK: - 解档
    required init?(coder aDecoder: NSCoder) {
        super.init()
        id = aDecoder.decodeObject(forKey: "id") as? Int
        title = aDecoder.decodeObject(forKey: "title") as? String
        content = aDecoder.decodeObject(forKey: "content") as? String
        time = aDecoder.decodeObject(forKey: "time") as? Int
        scanNum = (aDecoder.decodeObject(forKey: "scanNum") as! Int)
    }
    override init() {
        super.init()
    }
}
