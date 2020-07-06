//
//  GitHubNotificationModelTests.swift
//  GitHubNotificationModelTests
//
//  Created by Amine Bensalah on 12/05/2020.
//  Copyright © 2020 Amine Bensalah. All rights reserved.
//

import Combine
@testable import GitHubNotificationModel
import XCTest

class NotificationsTests: XCTestCase {
    var bag = Set<AnyCancellable>()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testRepositoryJsonDecode() throws {
        let dataProvide = DataProviderMock<[Notifications]>(forResource: "notification",
                                                            ofType: "json",
                                                            inDirectory: "json.bundle")
        var notifications: [Notifications]?
        let expectation = self.expectation(description: #function)

        try dataProvide
            .request()
            .sink(receiveCompletion: { _ in
                expectation.fulfill()
            }, receiveValue: { result in
                notifications = result
            })
            .store(in: &bag)

        waitForExpectations(timeout: 5.0) { error in
            if let error = error {
                XCTFail(error.localizedDescription)
            }
            XCTAssertEqual(notifications?.count, 50)
        }
    }
}
