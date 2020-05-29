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
        let dataSource = MenuDataSource(pizzas: [.fixture()])
        XCTAssertEqual(dataSource.numberOfSections, 1)
    }
    
    func testRowsInSection() {
        let dataSource = MenuDataSource(pizzas: [.fixture(), .fixture(), .fixture()])
        XCTAssertEqual(dataSource.numberOfRows(inSection: 0), 3)
    }
    
    func testRowsInOutOfBoundsSectionIsZero() {
        let dataSource = MenuDataSource(pizzas: [.fixture(), .fixture(), .fixture()])
        XCTAssertEqual(dataSource.numberOfRows(inSection: 1), 0)
        XCTAssertEqual(dataSource.numberOfRows(inSection: -1), 0)
    }
    
    func testItemForRowInSection() {
        let dataSource = MenuDataSource(pizzas: [.fixture(name: "Margherita"), .fixture(name: "Capricciosa")])
        XCTAssertEqual(dataSource.item(forRow: 0, inSection: 0).title, "Margherita")
        XCTAssertEqual(dataSource.item(forRow: 1, inSection: 0).title, "Capricciosa")
    }

}
