//
//  Subject.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 25/05/2020.
//

import Foundation

public struct Subject: Codable {
    public let latestCommentUrl: URL?
    public let title: String
    public let type: String
    public let url: URL

    enum CodingKeys: String, CodingKey {
        case latestCommentUrl = "latest_comment_url"
        case title
        case type
        case url
    }

    public init(latestCommentUrl: URL?, title: String, type: String, url: URL) {
        self.latestCommentUrl = latestCommentUrl
        self.title = title
        self.type = type
        self.url = url
    }
}
