//
//  Links.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 07/06/2020.
//

import Foundation

// MARK: - Base

public struct Branch: Codable, Equatable {
    public let label: String?
    public let ref: String?
    public let repo: Repository?
    public let sha: String?
    public let user: User?

    enum CodingKeys: String, CodingKey {
        case label
        case ref
        case repo
        case sha
        case user
    }

    public init(label: String?, ref: String?, repo: Repository?, sha: String?, user: User?) {
        self.label = label
        self.ref = ref
        self.repo = repo
        self.sha = sha
        self.user = user
    }
}
