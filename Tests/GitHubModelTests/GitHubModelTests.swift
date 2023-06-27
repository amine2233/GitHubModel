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

	func test_decode_notification_data() throws {
		// GIVEN
		let localFileProvider = LocaleFileProviderDefault(bundle: .module)
		let data = try localFileProvider.data(
			forResource: "hook",
			ofFileType: "json",
			inDirectory: nil
		)

		let decoder = JSONDecoder()
		decoder.dateDecodingStrategy = .iso8601

		// WHEN
		let result = try decoder.decode(Hook.self, from: data)

		// THEN
		XCTAssertEqual(result.id.rawValue, 6567857863)
	}

    static var allTests = [
        ("testExample", testExample),
		("test_decode_notification_data", test_decode_notification_data)
    ]
}
