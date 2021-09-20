import XCTest

class UpdateBalanceTest: TestBase {
  
    func testUpdateBalance() {
      app.buttons["add_account"].tap()
      app.textFields.firstMatch.tap()
      app.textFields.firstMatch.typeText("Savings")
      app.buttons["save"].tap()

      app.cells.firstMatch.tap()

      XCTAssertEqual(app.navigationBars.staticTexts.firstMatch.label, localizedStringUpdateBalance("Update Balance"))

      app.textFields.firstMatch.tap()
      app.textFields.firstMatch.typeText("-120")
      app.buttons["save"].tap()

      XCTAssertEqual(app.cells.buttons.firstMatch.label, "Savings, -\(currency)120\(separator)00")

      app.cells.firstMatch.tap()
      app.textFields.firstMatch.tap()
      app.textFields.firstMatch.typeText("340")
      app.buttons["save"].tap()

      XCTAssertEqual(app.cells.buttons.firstMatch.label, "Savings, \(currency)220\(separator)00")
    }

}






