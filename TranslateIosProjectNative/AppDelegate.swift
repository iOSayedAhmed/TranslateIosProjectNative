//
//  AppDelegate.swift
//  TranslateIosProjectNative
//
//  Created by iOSayed on 21/02/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        forLanguage()
        return true
    }

    func forLanguage(){
        let lang = UserDefaults.standard.object(forKey: "loclz") as? String
        if lang != nil{
            BundleLocalization.sharedInstance()?.language = lang!
        }else{
            //device lang
        let current_lang = NSLocale.preferredLanguages[0]
        if current_lang.contains("ar"){
        UserDefaults.standard.set("ar", forKey: "loclz")
        BundleLocalization.sharedInstance()?.language = "ar"
        }else{
        UserDefaults.standard.set("en", forKey: "loclz")
        BundleLocalization.sharedInstance()?.language = "en"
        }
        }
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

