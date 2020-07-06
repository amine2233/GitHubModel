//
//  Loadda.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 11/06/2020.
//

import Combine
import Foundation

enum DataProviderMockError: Error {
    case url(message: String)
    case decode(failure: Error)
}

struct DataProviderMock<Model: Decodable> {
    let resource: String
    let type: String
    let directory: String?
    let bundle: Bundle

    init(bundle: Bundle = .unittest, forResource: String, ofType: String, inDirectory: String?) {
        resource = forResource
        type = ofType
        directory = inDirectory
        self.bundle = bundle
    }

    func request() throws -> AnyPublisher<Model, DataProviderMockError> {
        try runRequest().eraseToAnyPublisher()
    }

    private func runRequest() throws -> Future<Model, DataProviderMockError> {
        guard let url = bundle.path(forResource: resource, ofType: type, inDirectory: directory) else {
            return Future { promise in
                promise(.failure(
                    .url(
                        message: """
                            url doesn't find bundle with resource: \(self.resource), type: \(self.type),
                            directory: \(self.directory ?? "empty folder")
                        """
                    )
                )
                )
            }
        }
        do {
            let urlPath = URL(fileURLWithPath: url)
            let data = try Data(contentsOf: urlPath)
            let decoder = JSONDecoder()
            decoder.dateDecodingStrategy = .iso8601
            let json = try decoder.decode(Model.self, from: data)
            return Future { promise in
                promise(.success(json))
            }
        } catch {
            return Future { promise in
                promise(.failure(.decode(failure: error)))
            }
        }
    }
}

extension Bundle {
    static let unittest = Bundle(for: PrivateClass.self)
}

private class PrivateClass {}
