//
//  PaletteCreatorUITests.swift
//  PaletteCreatorUITests
//
//  Created by Dave Shu on 11/11/18.
//  Copyright © 2018 Dave Shu. All rights reserved.
//

import XCTest

class PaletteCreatorUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let app = XCUIApplication()
        
        // Tap Create
        app.navigationBars["Palettes"].buttons["create-palette-button"].tap()
        
        // Set name
        let textField = app.textFields["palette-entry-text-field"]
        textField.tap()
        textField.typeText("-abc123\n")
        
        // Adjust Color #2's green slider
        app.buttons["color-button-2"].tap()
        app.sliders["green-slider"].adjust(toNormalizedSliderPosition: 0.7)
        
        // Dismiss Create
        app.navigationBars["Create Palette"].buttons["palette-entry-save-button"].tap()
        
        // Verify
        XCTAssert(app.tables["palette-table"].staticTexts["New Palette-abc123"].exists)
    }
}
