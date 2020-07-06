//
//  Links.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 07/06/2020.
//

import Foundation

// MARK: - Base

public struct Branch: Codable, Equatable {
    let label: String?
    let ref: String?
    let repo: Repository?
    let sha: String?
    let user: User?

    enum CodingKeys: String, CodingKey {
        case label
        case ref
        case repo
        case sha
        case user
    }
}
