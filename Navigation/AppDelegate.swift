//
//  AppDelegate.swift
//  Navigation
//
//  Created by Maksim Kargin on 12.02.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        
//        let newslineItem = UITabBarItem()
//        newslineItem.title = "1ЛЕНТА"
        let newsline = NewslineViewController()
        newsline.view.backgroundColor = .systemBackground
        newsline.title = "ЛЕНТА"
        let newslineNavigationController = UINavigationController(rootViewController: newsline)
//        newsline.tabBarItem = newslineItem
        
        let iconConfig = UIImage.SymbolConfiguration(scale: .large)
        let newslineGearIcon = UIImage(systemName: "house.fill", withConfiguration: iconConfig)
        newslineNavigationController.tabBarItem.image = newslineGearIcon
        
//        let profileItem = UITabBarItem()
//        profileItem.title = "1ПРОФИЛЬ"
        let profile = ProfileViewController()
        profile.view.backgroundColor = .systemBackground
        profile.title = "ПРОФИЛЬ"
        let profileNavigationController = UINavigationController(rootViewController: profile)
//        profile.tabBarItem = profileItem
        
        let profileGearIcon = UIImage(systemName: "person.fill", withConfiguration: iconConfig)
        profileNavigationController.tabBarItem.image = profileGearIcon
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [newslineNavigationController, profileNavigationController]
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }
}

