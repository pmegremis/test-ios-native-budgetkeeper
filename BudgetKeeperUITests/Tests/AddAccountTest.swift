import XCTest

class AddAccounTest: TestBase {
  

  func testAddAccount() {
    app.buttons["add_account"].tap()

    XCTAssertEqual(app.navigationBars.staticTexts.firstMatch.label, localizedString("New Account"))

    app.textFields.firstMatch.tap()
    app.textFields.firstMatch.typeText("Savings")
    app.buttons["save"].tap()

    XCTAssertEqual(app.cells.count, 1)
    // since the cell content is wrapped into the navigation link, the element type is 'button'
    XCTAssertEqual(app.cells.buttons.firstMatch.label, "Savings, \(currency)0\(separator)00")
  }
  
}



