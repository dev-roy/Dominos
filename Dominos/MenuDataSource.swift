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
    
    func item(forRow row: Int, inSection section: Int) -> MenuItem? {
        guard section == 0 else { return .none }
        guard row >= 0, pizzas.count > row else { return .none }
        return MenuItem(pizza: pizzas[row])
    }
}
