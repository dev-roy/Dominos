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
        let dataSource = MenuDataSource()
        XCTAssertEqual(dataSource.numberOfSections, 1)
    }

}
