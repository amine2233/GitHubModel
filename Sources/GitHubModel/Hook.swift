//
//  Hook.swift
//  GitHubModel
//
//  Created by Amine Bensalah on 11/07/2020.
//

import Foundation

public struct Hook: Codable {
    let type: String
    let id: Int
    let name: String
    let active: Bool
    let events: [Event]
    let config: Config
    let updatedAt: Date
    let createdAt: Date
    let url: URL
    let testURL: URL
    let pingURL: URL
    let lastResponse: LastResponse

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
}

public struct Config: Codable {
    let contentType: String
    let insecureSSL: Int
    let url: URL

    enum CodingKeys: String, CodingKey {
        case contentType = "content_type"
        case insecureSSL = "insecure_ssl"
        case url
    }
}

public struct LastResponse: Codable {
    let code: Int?
    let status: String?
    let message: String?
}
