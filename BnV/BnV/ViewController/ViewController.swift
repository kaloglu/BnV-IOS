//
//  ViewController.swift
//  BnV
//
//  Created by ibrahim oktay on 12.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    
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
        
        var raf = Raffle()
        raf.id = "kdadadla"
        raf.asDictionary
        
        RaffleStorage().list { raffles in
            print(raffles)
        }
        
        UserStorage().list { raffles in
                   print(raffles)
        }
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vc = authUI.authViewController()
        self.present(vc, animated: true)
    }
}

