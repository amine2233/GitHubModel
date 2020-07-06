//
//  User.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 19/05/2020.
//

import Foundation

// MARK: model

public struct User: Codable, Equatable {
    public let id: Int
    public let login: String
    public let type: String
    public let url: URL
    public let siteAdmin: Bool
    public let avatarUrl: URL?
    public let followersUrl: URL
    public let htmlUrl: URL
    public let organizationsUrl: URL?
    public let reposUrl: URL
    public let name: String?
    public let location: String?
    public let company: String?
    public let blog: String?
    public let email: String?
    public let hireable: Bool?
    public let bio: String?
    public let publicRepos: UInt?
    public let publicGists: UInt?
    public let followers: UInt?
    public let following: UInt?
    public let createdAt: Date?
    public let updatedAt: Date?
    public let totalPrivateRepos: UInt?
    public let plan: Plan?
    public let ownedPrivateRepos: UInt?
    public let privateGists: UInt?
    public let diskUsage: UInt?
    public let collaborators: UInt?

    enum CodingKeys: String, CodingKey {
        case id
        case login
        case type
        case url
        case siteAdmin = "site_admin"
        case avatarUrl = "avatar_url"
        case followersUrl = "followers_url"
        case htmlUrl = "html_url"
        case organizationsUrl = "organizations_url"
        case reposUrl = "repos_url"
        case publicRepos = "public_repos"
        case publicGists = "public_gists"
        case name
        case location
        case company
        case blog
        case email
        case hireable
        case bio
        case followers
        case following
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case totalPrivateRepos = "total_private_repos"
        case ownedPrivateRepos = "owned_private_repos"
        case privateGists = "private_gists"
        case diskUsage = "disk_usage"
        case collaborators
        case plan
    }
}
