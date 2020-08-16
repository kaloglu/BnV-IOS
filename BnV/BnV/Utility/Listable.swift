//
//  Listable.swift
//  BnV
//
//  Created by ibrahim oktay on 16.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import Foundation

protocol Listable: Storage {
    static var LIST_KEY: String { get }
    associatedtype itemType where itemType: Codable
    
    func list(_ completion: @escaping ([itemType])->Void)
}

extension Listable {
    
    func list(_ completion: @escaping ([itemType])->Void) {
        db.collection(Self.LIST_KEY).getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                var list = [itemType]()
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    do {
                        let item = try document.data(as: itemType.self)
                        list.append(item!)
                    } catch {
                        print(error)
                    }
                }
                print(list)
                completion(list)
            }
        }
    }
}
