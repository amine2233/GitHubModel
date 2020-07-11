//
//  Event.swift
//  GitHubModel
//
//  Created by Amine Bensalah on 11/07/2020.
//

import Foundation

/// The event for push notification
/// https://developer.github.com/webhooks/event-payloads/
public enum Event: String, CaseIterable, Codable {
    case checkRun = "check_run"
    case checkSuite = "check_suite"
    case commitComment = "commit_comment"
    case contentReference = "content_reference"
    case create = "create"
    case delete = "delete"
    case deployKey = "deploy_key"
    case deployment = "deployment"
    case deploymentStatus = "deployment_status"
    case fork = "fork"
    case githubAppAuthorization = "github_app_authorization"
    case gollum = "gollum"
    case installation = "installation"
    case installationRepositories = "installation_repositories"
    case issueComment = "issue_comment"
    case issues = "issues"
    case label = "label"
    case marketplacePurchase = "marketplace_purchase"
    case member = "member"
    case membership = "membership"
    case meta = "meta"
    case milestone = "milestone"
    case organization = "organization"
    case orgBlock = "org_block"
    case package = "package"
    case pageBuild = "page_build"
    case ping = "ping"
    case projectCard = "project_card"
    case projectColumn = "project_column"
    case project = "project"
    case `public` = "public"
    case pullRequest = "pull_request"
    case pullRequestReview = "pull_request_review"
    case pullRequestReviewComment = "pull_request_review_comment"
    case push = "push"
    case release = "release"
    case repositoryDispatch = "repository_dispatch"
    case repository = "repository"
    case repositoryImport = "repository_import"
    case repositoryVulnerabilityAlert = "repository_vulnerability_alert"
    case securityAdvisory = "security_advisory"
    case sponsorship = "sponsorship"
    case star = "star"
    case status = "status"
    case team = "team"
    case teamAdd = "team_add"
    case watch = "watch"
}
