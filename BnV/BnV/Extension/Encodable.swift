//
//  Encodable.swift
//  BnV
//
//  Created by ibrahim oktay on 16.08.2020.
//  Copyright © 2020 ibrahim oktay. All rights reserved.
//

import Foundation

extension Encodable {
    var asDictionary : [String:Any] {
        let mirror = Mirror(reflecting: self)
        let dict = Dictionary(uniqueKeysWithValues: mirror.children.lazy.map({ (label:String?, value:Any) -> (String, Any)? in
            guard let label = label else { return nil }
            return (label, value)
        }).compactMap { $0 })
        return dict
    }
}
