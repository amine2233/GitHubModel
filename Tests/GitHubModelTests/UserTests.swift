//
//  UserTests.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 11/06/2020.
//

import Combine
@testable import GitHubNotificationModel
import XCTest

class UserTests: XCTestCase {
    var bag = Set<AnyCancellable>()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUserJsonDecode() throws {
        let dataProvide = DataProviderMock<User>(forResource: "user",
                                                 ofType: "json",
                                                 inDirectory: "json.bundle")
        var data: User?
        let expectation = self.expectation(description: #function)

        try dataProvide
            .request()
            .sink(receiveCompletion: { _ in
                expectation.fulfill()
            }, receiveValue: { result in
                data = result
            })
            .store(in: &bag)

        waitForExpectations(timeout: 5.0) { error in
            if let error = error {
                XCTFail(error.localizedDescription)
            }
            XCTAssertEqual(data?.name, "amine")
        }
    }
}
