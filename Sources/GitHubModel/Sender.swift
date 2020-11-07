import Foundation

public struct Sender: Codable {

    public let avatarUrl: String?
    public let eventsUrl: String?
    public let followersUrl: String?
    public let followingUrl: String?
    public let gistsUrl: String?
    public let gravatarId: String?
    public let htmlUrl: String?
    public let id: Int?
    public let login: String?
    public let nodeId: String?
    public let organizationsUrl: String?
    public let receivedEventsUrl: String?
    public let reposUrl: String?
    public let siteAdmin: Bool?
    public let starredUrl: String?
    public let subscriptionsUrl: String?
    public let type: String?
    public let url: String?

    enum CodingKeys: String, CodingKey {
        case avatarUrl = "avatar_url"
        case eventsUrl = "events_url"
        case followersUrl = "followers_url"
        case followingUrl = "following_url"
        case gistsUrl = "gists_url"
        case gravatarId = "gravatar_id"
        case htmlUrl = "html_url"
        case id = "id"
        case login = "login"
        case nodeId = "node_id"
        case organizationsUrl = "organizations_url"
        case receivedEventsUrl = "received_events_url"
        case reposUrl = "repos_url"
        case siteAdmin = "site_admin"
        case starredUrl = "starred_url"
        case subscriptionsUrl = "subscriptions_url"
        case type = "type"
        case url = "url"
    }

    public init(avatarUrl: String?, eventsUrl: String?, followersUrl: String?, followingUrl: String?, gistsUrl: String?, gravatarId: String?, htmlUrl: String?, id: Int?, login: String?, nodeId: String?, organizationsUrl: String?, receivedEventsUrl: String?, reposUrl: String?, siteAdmin: Bool?, starredUrl: String?, subscriptionsUrl: String?, type: String?, url: String?) {
        self.avatarUrl = avatarUrl
        self.eventsUrl = eventsUrl
        self.followersUrl = followersUrl
        self.followingUrl = followingUrl
        self.gistsUrl = gistsUrl
        self.gravatarId = gravatarId
        self.htmlUrl = htmlUrl
        self.id = id
        self.login = login
        self.nodeId = nodeId
        self.organizationsUrl = organizationsUrl
        self.receivedEventsUrl = receivedEventsUrl
        self.reposUrl = reposUrl
        self.siteAdmin = siteAdmin
        self.starredUrl = starredUrl
        self.subscriptionsUrl = subscriptionsUrl
        self.type = type
        self.url = url
    }
}
