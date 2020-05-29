//
//  MenuDataSource.swift
//  Dominos
//
//  Created by Rodrigo Buendia Ramos on 5/29/20.
//  Copyright © 2020 Rodrigo Buendia Ramos. All rights reserved.
//

import Foundation

struct MenuDataSource {
    let numberOfSections = 1
    let pizzas: [Pizza]
    
    func numberOfRows(inSection section: Int) -> Int {
        guard section == 0 else { return 0 }
        return pizzas.count
    }
}
