//
//  AppDelegate.swift
//  RDVTabBarController
//
//  Created by 千葉大志 on 2016/10/25.
//  Copyright © 2016年 Robert Dimitrov. All rights reserved.
//

import Foundation

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    public var window: UIWindow?
    var tabBarController: RDVTabBarController?
    
    func applicationDidFinishLaunching(_ application: UIApplication) {
        self.setupViewControllers()
        
        window = UIWindow()
        window?.frame = UIScreen.main.bounds
        window?.backgroundColor = UIColor.white
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

    }
    
    func setupViewControllers() {
        let firstViewController = RDVFirstViewController()
        let secondViewController = RDVSecondViewController()
        let thirdViewController = RDVThirdViewController()
        
        tabBarController = RDVTabBarController()
        tabBarController?.viewControllers = [firstViewController, secondViewController, thirdViewController]
        
        self.customizeTabBarForController(tabBarController: tabBarController!)
        
    }
    
    func customizeTabBarForController(tabBarController: RDVTabBarController) {
        let finishedImage = UIImage(named: "tabbar_selected_background")
        let unfinishedImage = UIImage(named: "tabbar_normal_background")
        let tabBarItemImages = ["first", "second", "third"]
        
        for item in tabBarController.tabBar.items {
            item.setBackgroundSelectedImage(finishedImage, withUnselectedImage: unfinishedImage)
        }
    }
    
   
    
   
}



