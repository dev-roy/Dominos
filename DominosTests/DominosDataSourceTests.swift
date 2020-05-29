//
//  DominosDataSourceTests.swift
//  DominosTests
//
//  Created by Rodrigo Buendia Ramos on 5/29/20.
//  Copyright © 2020 Rodrigo Buendia Ramos. All rights reserved.
//

import XCTest
@testable import Dominos

class DominosDataSourceTests: XCTestCase {
    
    func testHasOneSection() {
        let dataSource = MenuDataSource(pizzas: [Pizza]())
        XCTAssertEqual(dataSource.numberOfSections, 1)
    }
    
    func testRowsInSection() {
        let dataSource = MenuDataSource(pizzas: [Pizza(), Pizza(), Pizza()])
        XCTAssertEqual(dataSource.numberOfRows(inSection: 0), 3)
    }

}
