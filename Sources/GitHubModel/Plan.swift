//
//  Plan.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 03/06/2020.
//

import Foundation

public struct Plan: Codable, Equatable {
    public let name: String?
    public let space: UInt?
    public let collaborators: UInt?
    public let privateRepos: UInt?

    enum CodingKeys: String, CodingKey {
        case name
        case space
        case collaborators
        case privateRepos = "private_repos"
    }

    public init(name: String?, privateRepos: UInt?, collaborators: UInt?, space: UInt?) {
        self.name = name
        self.privateRepos = privateRepos
        self.collaborators = collaborators
        self.space = space
    }
}
