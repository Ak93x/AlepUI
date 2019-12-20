//
//  AppDelegate.swift
//  AlepUI
//
//  Created by Ak93x on 12/20/2019.
//  Copyright (c) 2019 Ak93x. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //MARK: CREATING STORYBOARD
        let navigation = UINavigationController(rootViewController: ViewController())
            navigation.isNavigationBarHidden = true
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = navigation
        
        return true
    }



}

