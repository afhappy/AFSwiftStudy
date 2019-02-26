//
//  RISStruct.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/10/26.
//  Copyright © 2017年 mine. All rights reserved.
//

import UIKit
// MARK: - 结构体协议
protocol StudentProtocol {
    func studentPr()
}

struct Student {
    // MARK: - 属性
    var name: String
    var age: Int
    var classNum: String
    // MARK: - 修改属性例1
    mutating func modifyName(name: String){
        self.name = name
    }
    // MARK: - 计算属性
    var myAge: Int{
        mutating get{
            self.age = self.age * 2
            return age
        }
    }
    // MARK: - 方法
    func descriptionStudent() {
        print("姓名：" + name + " 年龄：" + "\(age)" + " 班级号：" + classNum)
    }
    // MARK: - 下标  subscript自定义下标
    var nameIndex: [String]
    subscript (index: Int) -> String?{
        get{
            if nameIndex.count <= index{
                return "nil"
            }
            return nameIndex[index]
        }
    }
}
// MARK: - 结构体修改属性例2
struct Point {
    var x = 0.0, y = 0.0
    mutating func modifyXY(x delteX: Double, y delteY: Double){
        self = Point(x: delteX + x, y: delteY + y)
    }
}

class RISStruct: NSObject {
    static let instance : RISStruct = RISStruct()
    private override init() {
        
    }
}
extension RISStruct{
    func testStruct() {
        var student1 = Student(name: "andy", age: 15, classNum: "0501", nameIndex: ["1", "2", "3", "4", "5"])
        student1.descriptionStudent()
        print("结构体扩展下标" + student1[5]!)
        // MARK: - 结构体扩展方法
        student1.classDescription()
        // MARK: - 结构体实现协议
        student1.studentPr()
        // MARK: - 结构体修改属性
        student1.modifyName(name: "王五")
        print("结构体修改属性name：" + student1.name)
        print("结构体计算属性age：" + "\(student1.myAge)")
        var point = Point(x: 1.0, y: 3.0)
        point.modifyXY(x: 1.0, y: 2.0)
        print("结构体修改属性例2：" + "\(point)")
        // MARK: - 结构体判断对象地址是否相同 - 结构体为值类型
        student1.name = "赵四"
        var student2 = student1
        student2.name = "马汉"
        print(student1.name,student2.name)
        
        
        let a = Student(name: "af1", age: 10, classNum: "", nameIndex: [])
        let b = Student(name: "af2", age: 13, classNum: "", nameIndex: [])
        let c = Student(name: "af3", age: 8, classNum: "", nameIndex: [])
        let sumAge = [a, b, c].reduce(0) {
            return $0 + $1.age
        }
        print("平均年龄：" + "\(sumAge/3)")
//        只有一行代码的时候可以隐藏return，$0表示第一个传进来的参数
        print([a, b, c].map{ $0.age * 2 })
        
        let randomNumber:Int = Int(arc4random() % 100) + 1
        print(randomNumber)
        
    }
}
// MARK: - 结构体扩展
extension Student{
    func classDescription() {
        print("结构体扩展" + self.classNum)
    }
}
// MARK: - 结构体实现协议
extension Student: StudentProtocol{
    func studentPr() {
        print("结构体实现协议方法")
    }
}
