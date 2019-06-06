//
//  AppDelegate.swift
//  AppStore
//
//  Created by Cristian Leonel Gibert on 03/06/2019.
//  Copyright © 2019 Cristian Gibert. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.rootViewController = BaseTabBarController()
        
        return true
    }
}

