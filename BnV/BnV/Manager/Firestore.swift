//
//  Firestore.swift
//  BnV
//
//  Created by ibrahim oktay on 15.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import FirebaseFirestore

class Storage {
    var db: Firestore!
    
    init() {
        db = Firestore.firestore()
    }
}
