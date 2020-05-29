//
//  Pizza.swift
//  Dominos
//
//  Created by Rodrigo Buendia Ramos on 5/29/20.
//  Copyright © 2020 Rodrigo Buendia Ramos. All rights reserved.
//

import Foundation

struct Pizza {
    let name: String
}

extension Pizza {
    static func fixture(name: String = "Margherita") -> Pizza {
        return Pizza(name: name)
    }
}
