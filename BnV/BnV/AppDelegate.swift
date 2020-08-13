//
//  AppDelegate.swift
//  BnV
//
//  Created by ibrahim oktay on 12.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import UIKit

import FirebaseCore
import FirebaseAuth
import FirebaseUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var authUI: FUIAuth!
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application
        FirebaseApp.configure()
//        GIDSignIn.sharedInstance().clientID = FirebaseApp.app()?.options.clientID
//        GIDSignIn.sharedInstance().delegate = self
        
        authUI = FUIAuth.defaultAuthUI()
        // You need to adopt a FUIAuthDelegate protocol to receive callback
        authUI.delegate = self
        let providers: [FUIAuthProvider] = [
          FUIGoogleAuth(),
//          FUIFacebookAuth(),
//          FUIPhoneAuth(authUI:FUIAuth.defaultAuthUI()!),
        ]
        authUI.providers = providers
        
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

    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        let sourceApplication = options[UIApplication.OpenURLOptionsKey.sourceApplication] as! String?
        if FUIAuth.defaultAuthUI()?.handleOpen(url, sourceApplication: sourceApplication) ?? false {
          return true
        }
        // other URL handling goes here.
        return false
    }
}
//
//extension AppDelegate: GIDSignInDelegate {
//
//    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
//      if let error = error {
//        return
//      }
//
//      guard let authentication = user.authentication else { return }
//      let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
//                                                        accessToken: authentication.accessToken)
//        print("login...")
//        print(credential)
//    }
//
//    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
//        print("Disconnected...")
//    }
//}
extension AppDelegate: FUIAuthDelegate {
    
}
