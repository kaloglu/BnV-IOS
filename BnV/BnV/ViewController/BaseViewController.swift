//
//  BaseViewController.swift
//  BnV
//
//  Created by ibrahim oktay on 14.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import UIKit
import FirebaseUI
import FirebaseAuth

class BaseViewController: UIViewController {
    
    var handle: AuthStateDidChangeListenerHandle!
    var authUI: FUIAuth {
        return (UIApplication.shared.delegate as! AppDelegate).authManager.authUI
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            print(user)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Auth.auth().removeStateDidChangeListener(handle!)
    }
}
