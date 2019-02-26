//
//  RISMainNavigationVC.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2017/10/30.
//  Copyright © 2017年 mine. All rights reserved.
//

import UIKit

class RISMainNavigationVC: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
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
extension RISMainNavigationVC{
    func setupUI() {
        
    }
    // MARK: - 设置导航栏左侧按钮
    func setNavigationBack(controller: UIViewController) {
        controller.navigationItem.leftBarButtonItems = UIBarButtonItem.leftBarButtonItem(rect: nil, imageName: nil, title: "返回", target: self, action: #selector(navigationPopController))
    }
    @objc fileprivate func navigationPopController(){
        self.popViewController(animated: true)
    }
    // MARK: - 设置导航栏标题
    public func setNavigationTitle(title: String?, controller: UIViewController) {
        controller.navigationItem.title = title
    }
}
extension RISMainNavigationVC: UINavigationControllerDelegate{
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0{
            setNavigationBack(controller: viewController)
            
        }
//        setNavigationTitle(controller: viewController)
        super.pushViewController(viewController, animated: animated)
    }
}
