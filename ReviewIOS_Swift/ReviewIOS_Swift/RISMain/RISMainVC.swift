//
//  RISMainVC.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/10/30.
//  Copyright © 2017年 mine. All rights reserved.
//

import UIKit

class RISMainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.white
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
extension RISMainVC{
    public func pushToNextViewController(controller: UIViewController, animated: Bool){
        self.navigationController?.pushViewController(controller, animated: animated)
    }
    public func popToPreviousViewController(animated: Bool){
        self.navigationController?.popViewController(animated: animated)
    }
    public func popToPreviousViewController(controller: UIViewController, animated: Bool){
        self.navigationController?.popToViewController(controller, animated: animated)
    }
    public func popToRootViewController(animated: Bool){
        self.navigationController?.popToRootViewController(animated: animated)
    }
    public func setNavigationTitle(title: String?, controller: UIViewController){
        let nav : RISMainNavigationVC = RISMainNavigationVC()
        nav.setNavigationTitle(title: title, controller: controller)
    }
}
