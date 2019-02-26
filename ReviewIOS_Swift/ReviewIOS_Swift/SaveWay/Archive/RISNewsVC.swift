//
//  RISNewsVC.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/11/1.
//  Copyright © 2017年 mine. All rights reserved.
//

import UIKit

class RISNewsVC: RISMainVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setNavigationTitle(title: "新闻", controller: self)
        print(RISSaveWay.instance.writeDataToPlist())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
