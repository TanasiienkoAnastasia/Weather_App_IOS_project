//
//  TabViewController.swift
//  Weather_App_IOS_project
//
//  Created by Oleksandr on 01.12.2023.
//

import UIKit

final class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let tab1 = WeatherViewController()
        tab1.title = "Weather"
        
        let tab2 = SettengViewController()
        tab2.title = "Setting"
        
        let nav1 = UINavigationController(rootViewController: tab1)
        let nav2 = UINavigationController(rootViewController: tab2)
        
        nav1.tabBarItem = UITabBarItem(title: "Weather",
                                       image: UIImage(systemName: "cloud.sun"),
                                       tag: 1)
        
        nav2.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "gear"),
                                       tag: 2)
        
        setViewControllers([
            nav1,
            nav2,
        ], animated: true)
    }
}
