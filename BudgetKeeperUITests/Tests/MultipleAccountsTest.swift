import XCTest

class MultipleAccountsTest: TestBase {
  
    func testMultipleAccounts() {
      app.buttons["add_account"].tap()
      app.textFields.firstMatch.tap()
      app.textFields.firstMatch.typeText("Savings")
      app.buttons["save"].tap()

      app.buttons["add_account"].tap()
      app.textFields.firstMatch.tap()
      app.textFields.firstMatch.typeText("Salary")
      app.buttons["save"].tap()

      app.cells.firstMatch.tap()
      app.textFields.firstMatch.tap()
      app.textFields.firstMatch.typeText("7620")
      app.buttons["save"].tap()

      app.cells.element(boundBy: 1).tap()
      app.textFields.firstMatch.tap()
      app.textFields.firstMatch.typeText("5455")
      app.buttons["save"].tap()

      XCTAssertEqual(app.cells.count, 2)
      XCTAssertEqual(app.cells.buttons.firstMatch.label, "Savings, \(currency)7620\(separator)00")
      XCTAssertEqual(app.cells.element(boundBy: 1).buttons.firstMatch.label, "Salary, \(currency)5455\(separator)00")
    }

}







