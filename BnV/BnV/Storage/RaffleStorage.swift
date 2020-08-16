//
//  RaffleStorage.swift
//  BnV
//
//  Created by ibrahim oktay on 16.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//
import Foundation
import Firebase
import FirebaseFirestore
import FirebaseFirestoreSwift

class RaffleStorage: Storage {
    
}

extension RaffleStorage: Listable {
    static var LIST_KEY: String = "raffles"
    typealias itemType = Raffle
}
