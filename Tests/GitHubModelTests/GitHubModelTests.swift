import XCTest
@testable import GitHubModel

final class GitHubModelTests: XCTestCase {
    func testExample() {
        let now = Date()
        let accessTokenPayload = AccessTokenPayload(
            refreshToken: "test_refresh",
            accessToken: "test_access",
            expiredAt: now
        )

        guard let date = DateFormatter.default().date(from: accessTokenPayload.expiredAt) else {
            XCTFail("can't create a date")
            return
        }

        XCTAssertEqual(now.timeIntervalSince1970, date.timeIntervalSince1970, accuracy: 0.001)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
