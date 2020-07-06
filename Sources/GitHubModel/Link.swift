//
//  Link.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 08/06/2020.
//

import Foundation

public struct Link: Codable, Equatable {
    public let comments: Comment?
    public let commits: Comment?
    public let html: Comment?
    public let issue: Comment?
    public let reviewComment: Comment?
    public let reviewComments: Comment?
    public let `self`: Comment?
    public let statuses: Comment?

    enum CodingKeys: String, CodingKey {
        case comments
        case commits
        case html
        case issue
        case reviewComment
        case reviewComments
        case `self`
        case statuses
    }
}

public struct Comment: Codable, Equatable {
    public let href: String?

    enum CodingKeys: String, CodingKey {
        case href
    }
}
