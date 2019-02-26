//
//  TestViewFirst.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2019/1/15.
//  Copyright © 2019 mine. All rights reserved.
//

import UIKit

class TestViewFirst: UIViewController {
    let dataSource = ["test", "hahhaha", "你说啥呢", "你猜我说啥呢", "哈哈哈哈哈", "来来来阿莱"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.white
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 50, y: 150, width: 100, height: 40)
        btn.setTitleColor(UIColor.green, for: UIControl.State.normal)
        btn.setTitle("dianjiwo", for: .normal)
        btn.addTarget(self, action: #selector(clickMe), for: .touchUpInside)
        self.view.addSubview(btn)
        
        
        
        
        /*let scrollView = UIScrollView(frame: CGRect(x: 0, y: 100, width: RIScreenWidth, height: 30))
        scrollView.backgroundColor = UIColor.red
        self.view.addSubview(scrollView)
        
        var finX: CGFloat = 0
        for i in 0..<dataSource.count{
            finX = finX + originX(string: dataSource[i], index: i)
            let label = UILabel(frame: CGRect(x: finX, y: 5, width: 80, height: 20))
            label.text = dataSource[i]
            label.backgroundColor = UIColor.white
            label.textAlignment = NSTextAlignment.center
            scrollView.addSubview(label)
        }
        finX = finX + 80 + 10
        scrollView.contentSize = CGSize(width: finX, height: 0)*/
    }
    @objc fileprivate func clickMe() {
        let alert = UIAlertController(title: "红色经典卡", message: "发生的就开始了就发我就发送福利", preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "确定", style: UIAlertAction.Style.default) { (action) in
            print("这是UIAlertController！！！")
        }
        alert.addAction(action)
        
        self.present(alert, animated: true) {
            print("1")
        }
        
        //        let alert1 = UIAlertView(title: "tatata", message: "rwerwerwe", delegate: nil, cancelButtonTitle: "queding", otherButtonTitles: "cancel")
        //
        //        alert1.show()
        
        JYAlertView(frame: CGRect.zero)
    }
    /*func originX(string: String, index: NSInteger) -> CGFloat {
        var initX: CGFloat = 10
        if index == 0 {
            return initX
        }
        initX = initX + 10
        initX = initX + 80
        return initX
    }*/
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
