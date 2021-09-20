import Foundation
import XCTest

class TestBase: XCTestCase {
    let app = XCUIApplication()
    let currency = Locale.current.currencySymbol ?? "$"
    let separator = Locale.current.decimalSeparator ?? "."
    
    
    override func setUpWithError() throws {
      continueAfterFailure = false
      app.launch()
    }
    
    func localizedString(_ key: String) -> String {
        let result = NSLocalizedString(key, bundle: Bundle(for: AddAccounTest.self), comment: "")
      return result
    }
    
    func localizedStringUpdateBalance(_ key: String) -> String {
        let result = NSLocalizedString(key, bundle: Bundle(for: UpdateBalanceTest.self), comment: "")
      return result
    }
}
