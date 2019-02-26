//
//  RISHomeViewController.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2019/1/29.
//  Copyright © 2019 mine. All rights reserved.
//

import UIKit
import UserNotifications

class RISHomeViewController: RISMainVC {

    @IBOutlet weak var mainTable: UITableView!
    @IBOutlet weak var textView: UITextView!
    
    static let mainTableIdentifier: String = "RISMainTableCell"
    let functionTitle = ["Notification", "Delegate", "Enum", "Struct", "SaveWay", "testView", "算法"]
    // MARK: - 实例化设计模式 - 单例
    let designPattern = RISDesignPattern.instance
    // MARK: - 测试get/set方法
    var _test : String = "333"
    var test : String{
        get{
            return _test
        }
        set{
            _test = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // MARK: - 注册通知
        reciveNotification()
        // MARK: - 测试get/set方法
        test = "123"
        print(test)
        
        
        self.setNavigationTitle(title: "iOS All Knowledge", controller: self)
        
        mainTable.register(UITableViewCell.self, forCellReuseIdentifier: RISHomeViewController.mainTableIdentifier)
        
        NotificationCenter.default.addObserver(self, selector: #selector(changeText), name: NSNotification.Name.UITextViewTextDidChange, object: textView)
        
        
        // MARK: - 添加自定义通知
        //        let identifier = "CustomNotification"
        //        let content = UNMutableNotificationContent()
        //        content.title = "custom notification"
        //        content.body = "task!!"
        //        content.sound = UNNotificationSound.default()
        //        content.categoryIdentifier = identifier
        //
        //        //        触发器---设置美60秒重复一次
        //        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
        //        //        创建一个request
        //        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
        //        UNUserNotificationCenter.current().add(request) { (error) in
        //            if let error = error {
        //                print("Problem adding notification: \(error.localizedDescription)")
        //            }else{
        //                print("notificaiton success")
        //            }
        //        }

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

extension RISHomeViewController{
    // MARK: - 接收通知
    private func reciveNotification(){
        NotificationCenter.default.addObserver(self, selector: #selector(noticeEvent(result:)), name: Notification.Name.Task.TestNotice, object: nil)
    }
    @objc func noticeEvent(result : Notification) {
        print(result.userInfo ?? "")
    }
    @objc func changeText(noti: Notification) {
        let selectRange: UITextRange! = self.textView.markedTextRange
        if selectRange != nil {
            //            let position: UITextPosition! = self.textView.position(from: selectRange.start, offset: 0)
            print("有高亮")
        }else{
            print("没有高亮")
        }
        
        
        
    }
}
// MARK: - 代理方法
extension RISHomeViewController : RISDesignDelegate{
    func requestDelegateFun(param: String) {
        print(param)
    }
    func optionalDelegateFun(param: String) {
        print(param)
    }
}

extension RISHomeViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return functionTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RISHomeViewController.mainTableIdentifier)
        cell?.textLabel?.text = functionTitle[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0: //notification
            designPattern.postNotification()
        case 1:
            designPattern.designDelegate = self
            designPattern.achieveDelegate()
        case 2:
            RISEnum.instance.testEnum()
        case 3:
            RISStruct.instance.testStruct()
        case 4:
            let saveWay = RISNewsVC()
            self.pushToNextViewController(controller: saveWay, animated: true)
        case 5:
            let testView = TestViewFirst()
            self.pushToNextViewController(controller: testView, animated: true)
        case 6:
            self.pushToNextViewController(controller: RISProgramViewController(), animated: true)
        default:
            break
        }
        
        
    }
    
    
}

