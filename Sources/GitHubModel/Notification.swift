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
}
