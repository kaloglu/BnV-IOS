//
//  AuthManager.swift
//  BnV
//
//  Created by ibrahim oktay on 14.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import Foundation
import FirebaseAuth
import FirebaseUI

class AuthManager: NSObject {

    var authUI: FUIAuth!
        
    func initialize() {
        authUI = FUIAuth.defaultAuthUI()
        authUI.delegate = self
        let providers: [FUIAuthProvider] = [
            FUIGoogleAuth(),
            //          FUIFacebookAuth(),
            //          FUIPhoneAuth(authUI:FUIAuth.defaultAuthUI()!),
        ]
        authUI.providers = providers
    }
    
    func canHandle(_ url: URL, _ options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
        let sourceApplication = options[UIApplication.OpenURLOptionsKey.sourceApplication] as! String?
        return FUIAuth.defaultAuthUI()?.handleOpen(url, sourceApplication: sourceApplication) ?? false
    }
}
extension AuthManager: FUIAuthDelegate {
    
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        print(authDataResult)
    }
}
