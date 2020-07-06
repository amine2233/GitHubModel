import XCTest
@testable import GitHubModel

final class GitHubModelTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(GitHubModel().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
