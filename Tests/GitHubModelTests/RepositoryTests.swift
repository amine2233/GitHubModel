//
//  RepositoryTests.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 22/06/2020.
//

import Combine
@testable import GitHubNotificationModel
import XCTest

class RepositoryTests: XCTestCase {
    var bag = Set<AnyCancellable>()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRepository() throws {
        let dataProvide = DataProviderMock<Repository>(forResource: "RepositoryVulnerabilityAlert",
                                                       ofType: "json",
                                                       inDirectory: "json.bundle")
        var expectationResult: Repository?
        let expectation = self.expectation(description: #function)

        try dataProvide
            .request()
            .sink(receiveCompletion: { _ in
                expectation.fulfill()
            }, receiveValue: { result in
                expectationResult = result
            })
            .store(in: &bag)

        waitForExpectations(timeout: 5.0) { error in
            if let error = error {
                XCTFail(error.localizedDescription)
            }
            XCTAssertNotNil(expectationResult?.name)
            XCTAssertNotNil(expectationResult?.license)
            XCTAssertNotNil(expectationResult?.permissions)
            XCTAssertFalse(expectationResult!.private)
        }
    }
}
