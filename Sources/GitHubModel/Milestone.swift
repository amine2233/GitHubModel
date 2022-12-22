import Foundation

// MARK: - Milestone
public struct Milestone: Codable, Equatable {
    public let url: String?
    public let htmlURL: String?
    public let labelsURL: String?
    public let id: Int?
    public let nodeID: String?
    public let number: Int?
    public let state, title, description: String?
    public let creator: User?
    public let openIssues, closedIssues: Int?
    public let createdAt, updatedAt, closedAt, dueOn: Date?

    enum CodingKeys: String, CodingKey {
        case url
        case htmlURL = "html_url"
        case labelsURL = "labels_url"
        case id
        case nodeID = "node_id"
        case number, state, title
        case description = "description"
        case creator
        case openIssues = "open_issues"
        case closedIssues = "closed_issues"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case closedAt = "closed_at"
        case dueOn = "due_on"
    }
}
