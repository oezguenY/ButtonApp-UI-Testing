//
//  ButtonMasherUITests.swift
//  ButtonMasherUITests
//
//  Created by Özgün Yildiz on 19.04.21.
//  Copyright © 2021 Caleb Stultz. All rights reserved.
//

import XCTest

class ButtonMasherUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }

    override func tearDownWithError() throws {
        app = nil
    }
    
    func testChangeColorButton_WhenTapped_ShouldShowLabel() {
        app.buttons["Change Color"].tap()
        XCTAssertTrue(app.staticTexts["Now THAT's colorful!"].exists)
    }

}
