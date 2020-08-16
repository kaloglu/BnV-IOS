//
//  UserStorage.swift
//  BnV
//
//  Created by ibrahim oktay on 16.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import Foundation

class UserStorage: Storage {
    
}

extension UserStorage: Listable {
    static var LIST_KEY: String = "users"
    typealias itemType = User
}
