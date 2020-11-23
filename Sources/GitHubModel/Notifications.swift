//
//  Notification.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 25/05/2020.
//

import Foundation

public struct Notifications: Codable {
    public let id: String
    public let lastReadAt: Date?
    public let reason: String
    public let repository: Repository
    public let subject: Subject
    public let unread: Bool
    public let updatedAt: Date
    public let url: URL

    enum CodingKeys: String, CodingKey {
        case id
        case lastReadAt = "last_read_at"
        case reason
        case repository
        case subject
        case unread
        case updatedAt = "updated_at"
        case url
    }

    public init(id: String, lastReadAt: Date?, reason: String, repository: Repository, subject: Subject, unread: Bool, updatedAt: Date, url: URL) {
        self.id = id
        self.lastReadAt = lastReadAt
        self.reason = reason
        self.repository = repository
        self.subject = subject
        self.unread = unread
        self.updatedAt = updatedAt
        self.url = url
    }
}
