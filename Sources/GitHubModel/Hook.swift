//
//  Hook.swift
//  GitHubModel
//
//  Created by Amine Bensalah on 11/07/2020.
//

import Foundation
import Identity

public struct Hook: Codable, Equatable, Identifiable {
    public typealias RawIdentifier = Int

    public let type: String
    public let id: ID
    public let name: String
    public let active: Bool
    public let events: [Event]
    public let config: Config
    public let updatedAt: Date
    public let createdAt: Date
    public let url: URL
    public let testURL: URL
    public let pingURL: URL
    public let lastResponse: LastResponse

    enum CodingKeys: String, CodingKey {
        case type
        case id
        case name
        case active
        case events
        case config
        case updatedAt = "updated_at"
        case createdAt = "created_at"
        case url
        case testURL = "test_url"
        case pingURL = "ping_url"
        case lastResponse = "last_response"
    }

    public init(type: String, id: ID, name: String, active: Bool, events: [Event], config: Config, updatedAt: Date, createdAt: Date, url: URL, testURL: URL, pingURL: URL, lastResponse: LastResponse) {
        self.type = type
        self.id = id
        self.name = name
        self.active = active
        self.events = events
        self.config = config
        self.updatedAt = updatedAt
        self.createdAt = createdAt
        self.url = url
        self.testURL = testURL
        self.pingURL = pingURL
        self.lastResponse = lastResponse
    }
}

public struct LastResponse: Codable, Equatable {
    public let code: Int?
    public let status: String?
    public let message: String?

    public init(code: Int?, status: String?, message: String?) {
        self.code = code
        self.status = status
        self.message = message
    }
}
