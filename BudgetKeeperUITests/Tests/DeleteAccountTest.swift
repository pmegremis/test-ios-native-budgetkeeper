import XCTest

class DeleteAccountTest: TestBase {
  

  func testDeleteAccount() {
    app.buttons["add_account"].tap()
    app.textFields.firstMatch.tap()
    app.textFields.firstMatch.typeText("Savings")
    app.buttons["save"].tap()

    let cell = app.cells.firstMatch
    cell.swipeLeft()
    cell.buttons.firstMatch.tap()

    XCTAssertEqual(app.cells.count, 0)
  }

}




