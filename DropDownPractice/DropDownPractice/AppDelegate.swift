//
//  AppDelegate.swift
//  DropDownPractice
//
//  Created by 박예빈 on 2022/01/13.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // version > 13 : SceneDelegate에서 초기화 되었으니 바로 return 해준다.
        if #available(iOS 13.0, *) {
            return true
        }
        
        // version < 13 : SceneDelegate에서 해주었던 작업을 그대로 진행
        window = UIWindow()
        
        let rootVC = ViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        self.window?.rootViewController = navVC
        
        window?.makeKeyAndVisible()
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

