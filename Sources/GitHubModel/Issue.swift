//
//  Issue.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 08/06/2020.
//

import Foundation

public struct Issue: Codable {
    public let assignee: String?
    public let assignees: [String]?
    public let authorAssociation: String?
    public let body: String?
    public let closedAt: Date?
    public let closedBy: User?
    public let comments: Int?
    public let commentsUrl: String?
    public let createdAt: Date?
    public let eventsUrl: URL?
    public let htmlUrl: URL?
    public let id: Int
    public let labels: [Label]?
    public let labelsUrl: String?
    public let locked: Bool?
    public let milestone: Milestone?
    public let nodeId: String?
    public let number: Int
    public let repositoryUrl: URL
    public let state: String?
    public let title: String?
    public let updatedAt: Date?
    public let url: URL
    public let user: User

    enum CodingKeys: String, CodingKey {
        case assignee
        case assignees
        case authorAssociation = "author_association"
        case body
        case closedAt = "closed_at"
        case closedBy = "closed_by"
        case comments
        case commentsUrl = "comments_url"
        case createdAt = "created_at"
        case eventsUrl = "events_url"
        case htmlUrl = "html_url"
        case id
        case labels
        case labelsUrl = "labels_url"
        case locked
        case milestone
        case nodeId = "node_id"
        case number
        case repositoryUrl = "repository_url"
        case state
        case title
        case updatedAt = "updated_at"
        case url
        case user
    }
}
