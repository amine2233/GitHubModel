//
//  Repository.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 19/05/2020.
//

import Foundation

// MARK: model

public struct Repository: Codable, Equatable {
    public let id: Int
    public let name: String
    public let fullName: String
    public let `private`: Bool
    public let fork: Bool
    public let url: URL
    public let owner: User
    public let htmlUrl: URL
    public let license: License?
    public let permissions: Permission?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
        case `private`
        case fork
        case url
        case htmlUrl = "html_url"
        case license
        case permissions
    }
}

public struct Permission: Codable, Equatable {
    public let admin: Bool?
    public let pull: Bool?
    public let push: Bool?

    enum CodingKeys: String, CodingKey {
        case admin
        case pull
        case push
    }
}

public struct License: Codable, Equatable {
    public let key: String?
    public let name: String?
    public let nodeId: String?
    public let spdxId: String?
    public let url: String?

    enum CodingKeys: String, CodingKey {
        case key
        case name
        case nodeId = "node_id"
        case spdxId = "spdx_id"
        case url
    }
}
