//
//  SubjectDetail.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 07/06/2020.
//

import Foundation

public struct PullRequest: Codable, Equatable {
    public let links: Link?
    public let additions: Int?
    public let assignee: User?
    public let assignees: [User]?
    public let authorAssociation: String?
    public let base: Branch?
    public let body: String?
    public let changedFiles: Int?
    public let closedAt: Date?
    public let comments: Int?
    public let commentsUrl: String?
    public let commits: Int?
    public let commitsUrl: String?
    public let createdAt: Date?
    public let deletions: Int?
    public let diffUrl: String?
    public let draft: Bool?
    public let head: Branch?
    public let htmlUrl: URL?
    public let id: Int
    public let issueUrl: String?
    public let labels: [Label]?
    public let locked: Bool?
    public let maintainerCanModify: Bool?
    public let mergeCommitSha: String?
    public let mergeable: Bool?
    public let mergeableState: String?
    public let merged: Bool?
    public let mergedAt: String?
    public let mergedBy: User?
    public let milestone: String?
    public let nodeId: String?
    public let number: Int
    public let patchUrl: String?
    public let rebaseable: Bool?
    public let requestedReviewers: [String]?
    public let requestedTeams: [String]?
    public let reviewCommentUrl: String?
    public let reviewComments: Int?
    public let reviewCommentsUrl: String?
    public let state: String?
    public let statusesUrl: String?
    public let title: String?
    public let updatedAt: Date?
    public let url: URL
    public let user: User

    enum CodingKeys: String, CodingKey {
        case links
        case additions
        case assignee
        case assignees
        case authorAssociation = "author_association"
        case base
        case body
        case changedFiles = "changed_files"
        case closedAt = "closed_at"
        case comments
        case commentsUrl = "comments_url"
        case commits
        case commitsUrl = "commits_url"
        case createdAt = "created_at"
        case deletions
        case diffUrl = "diff_url"
        case draft
        case head
        case htmlUrl = "html_url"
        case id
        case issueUrl = "issue_url"
        case labels
        case locked
        case maintainerCanModify = "maintainer_can_modify"
        case mergeCommitSha = "merge_commit_sha"
        case mergeable
        case mergeableState = "mergeable_state"
        case merged
        case mergedAt = "merged_at"
        case mergedBy
        case milestone
        case nodeId = "node_id"
        case number
        case patchUrl = "patch_url"
        case rebaseable
        case requestedReviewers = "requested_reviewers"
        case requestedTeams = "requested_teams"
        case reviewCommentUrl = "review_comment_url"
        case reviewComments = "review_comments"
        case reviewCommentsUrl = "review_comments_url"
        case state
        case statusesUrl = "statuses_url"
        case title
        case updatedAt = "updated_at"
        case url
        case user
    }
}
