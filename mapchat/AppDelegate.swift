//
//  AppDelegate.swift
//  mapchat
//
//  Created by Nabil Rahman on 12/5/19.
//  Copyright © 2019 Nabil Rahman. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var authListener: AuthStateDidChangeListenerHandle?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
        //Autologin
//        authListener = Auth.auth().addStateDidChangeListener({ (auth, user) in
//            Auth.auth().removeStateDidChangeListener(self.authListener!)
//            if user != nil {
//                if UserDefaults.standard.object(forKey: kCURRENTUSER) != nil {
//                    DispatchQueue.main.async {
//                        self.goToApp()
//                    }
//                    
//                }
//            }
//            
//        })
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
    
//    func goToApp() {
//
//        NotificationCenter.default.post(name: NSNotification.Name(rawValue: USER_DID_LOGIN_NOTIFICATION), object: nil, userInfo: [kUSERID : FUser.currentId()])
//
//        let mainView = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mainApplication") as! UITabBarController
//
//        self.window?.rootViewController = mainView
//    }


}


