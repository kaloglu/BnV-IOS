//
//  ViewController.swift
//  BnV
//
//  Created by ibrahim oktay on 12.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import UIKit
import FirebaseAuth
import GoogleSignIn

class ViewController: UIViewController {
    
    var handle: AuthStateDidChangeListenerHandle!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        GIDSignIn.sharedInstance()?.presentingViewController = self
//
//        var googleSignIn = GIDSignInButton()
//        googleSignIn.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(googleSignIn)
//
//        googleSignIn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        googleSignIn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//        googleSignIn.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//        googleSignIn.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
       
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
                handle = Auth.auth().addStateDidChangeListener { (auth, user) in
            print(user)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let authUI = (UIApplication.shared.delegate as! AppDelegate).authUI
        let vc = authUI?.authViewController()
        self.present(vc!, animated: false)
    }
}

