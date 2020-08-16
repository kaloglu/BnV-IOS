//
//  Raffle.swift
//  BnV
//
//  Created by ibrahim oktay on 16.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct Raffle: Codable {
    var id: String!
    var description: String!
    var endDate: Timestamp!
    var startDate: Timestamp!
    var title: String!
}
