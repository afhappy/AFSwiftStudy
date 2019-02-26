//
//  RISMainTabbarViewController.swift
//  ReviewIOS_Swift
//
//  Created by fa on 2019/1/29.
//  Copyright © 2019 mine. All rights reserved.
//

import UIKit

class RISMainTabbarViewController: UITabBarController {

    fileprivate let itemImage = ["home", "mine"]
    fileprivate let itemImage_sel = ["home_sel", "mine_sel"]
    fileprivate let itemTitle = ["首页", "个人中心"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupUI()
    }
    fileprivate func setupUI(){
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let homeVC = storyBoard.instantiateViewController(withIdentifier: "RISHomeViewController")
        homeVC.title = itemTitle[0]
        
        let mineVC = RISMineViewController()
        mineVC.title = itemTitle[1]
        
        let homeNav = setupViewController(viewCon: homeVC as! RISMainVC, imageNormal: itemImage[0], imageSelect: itemImage_sel[0], title: itemTitle[0])
        let mineNav = setupViewController(viewCon: mineVC, imageNormal: itemImage[1], imageSelect: itemImage_sel[1], title: itemTitle[1])
        self.viewControllers = [homeNav, mineNav]
    }
    
    fileprivate func setupViewController(viewCon: RISMainVC, imageNormal: String, imageSelect: String, title: String) -> UIViewController{
        let navCon = RISMainNavigationVC(rootViewController: viewCon)
        navCon.tabBarItem.title = title
        navCon.tabBarItem.image = UIImage(named: imageNormal)?.withRenderingMode(.alwaysOriginal)
        navCon.tabBarItem.selectedImage = UIImage(named: imageSelect)?.withRenderingMode(.alwaysOriginal)
        return navCon
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
