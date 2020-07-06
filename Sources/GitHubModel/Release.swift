//
//  Release.swift
//  GitHubNotificationRepository
//
//  Created by Amine Bensalah on 01/07/2020.
//

import Foundation

public struct Release: Codable {
    public let assets: [String]?
    public let assetsUrl: String?
    public let user: User
    public let body: String?
    public let createdAt: Date?
    public let draft: Bool?
    public let htmlUrl: String?
    public let id: Int
    public let name: String?
    public let nodeId: String?
    public let prerelease: Bool?
    public let publishedAt: Date?
    public let tagName: String?
    public let tarballUrl: String?
    public let targetCommitish: String?
    public let uploadUrl: String?
    public let url: URL
    public let zipballUrl: String?

    enum CodingKeys: String, CodingKey {
        case assets
        case assetsUrl = "assets_url"
        case user = "author"
        case body
        case createdAt = "created_at"
        case draft
        case htmlUrl = "html_url"
        case id
        case name
        case nodeId = "node_id"
        case prerelease
        case publishedAt = "published_at"
        case tagName = "tag_name"
        case tarballUrl = "tarball_url"
        case targetCommitish = "target_commitish"
        case uploadUrl = "upload_url"
        case url
        case zipballUrl = "zipball_url"
    }
}
