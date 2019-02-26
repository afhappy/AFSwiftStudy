//
//  RISProgramViewController.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2019/1/29.
//  Copyright © 2019 mine. All rights reserved.
//

import UIKit

class RISProgramViewController: RISMainVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "算法"
        
        // MARK: - 两个数比较
        print("--------------算法一：比较大小--------------")
        let a = min(10, b: 11)
        print(a)
        
        print("--------------算法二：排队-出列--------------")
        // MARK: - 排队、出列
        let numberArr : [String] = ["a", "b", "c", "d", "e", "f"]
        lineNum(number: 3, numArr: numberArr)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension RISProgramViewController{
    // MARK: - 返回两个元素中较小的元素
    func min<T : Comparable>(_ a : T , b : T) -> T {
        return a < b ? a : b
    }
    // MARK: - 排队，每数到第三个人出列，并输出编号
    func lineNum(number: Int, numArr: [String]) {
        //        存储输出的编号
        var outputArr : [String] = []
        //        标记当前数到的数字
        var flag = 0
        //        标记是第几次输出
        var times = 0
        while times < numArr.count {
            for i in 0 ..< numArr.count {
                if !outputArr.contains(numArr[i]){
                    flag += 1
                    if flag == number{
                        times += 1
                        print("第" + "\(times)" + "次输出编号" + numArr[i])
                        outputArr.append(numArr[i])
                        flag = 0
                    }
                }
            }
        }
    }
}
