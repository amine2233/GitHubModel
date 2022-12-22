import Foundation

// MARK: model

public struct Team: Codable, Equatable {
    public let id: Int
    public let url: URL
    public let htmlUrl: URL
    public let name: String?
    public let slug: String?
    public let description: String?
    public let privacy: String?
    public let permission: String?
    public let membersUrl: String?
    public let repositoriesUrl: String?

    enum CodingKeys: String, CodingKey {
        case id
        case url
        case htmlUrl = "html_url"
        case name
        case slug
        case description
        case privacy
        case permission
        case membersUrl = "members_url"
        case repositoriesUrl = "repositories_url"
    }

    public init(id: Int, url: URL, htmlUrl: URL, name: String? = nil, slug: String? = nil, description: String? = nil, privacy: String? = nil, permission: String? = nil, membersUrl: String? = nil, repositoriesUrl: String? = nil) {
        self.id = id
        self.url = url
        self.htmlUrl = htmlUrl
        self.name = name
        self.slug = slug
        self.description = description
        self.privacy = privacy
        self.permission = permission
        self.membersUrl = membersUrl
        self.repositoriesUrl = repositoriesUrl
    }
}
