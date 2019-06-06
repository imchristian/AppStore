//
//  BaseTabBarController.swift
//  AppStore
//
//  Created by Cristian Leonel Gibert on 03/06/2019.
//  Copyright © 2019 Cristian Gibert. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let todayVC = createNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon")
        let appsVC = createNavController(viewController: UIViewController(), title: "Apps", imageName: "apps")
        let searchVC = createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search")
        
        viewControllers = [
            todayVC,
            appsVC,
            searchVC
        ]
    }
    
    private func createNavController(viewController: UIViewController, title: String, imageName: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        
        
        return navController
    }
}
