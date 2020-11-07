import Foundation

public struct Organization: Codable {

    public let avatarUrl: String?
    public let billingEmail: String?
    public let blog: String?
    public let collaborators: Int?
    public let company: String?
    public let createdAt: String?
    public let defaultRepositoryPermission: String?
    public let descriptionField: String?
    public let diskUsage: Int?
    public let email: String?
    public let eventsUrl: String?
    public let followers: Int?
    public let following: Int?
    public let hasOrganizationProjects: Bool?
    public let hasRepositoryProjects: Bool?
    public let hooksUrl: String?
    public let htmlUrl: String?
    public let id: Int?
    public let isVerified: Bool?
    public let issuesUrl: String?
    public let location: String?
    public let login: String?
    public let membersAllowedRepositoryCreationType: String?
    public let membersCanCreateInternalRepositories: Bool?
    public let membersCanCreatePrivateRepositories: Bool?
    public let membersCanCreatePublicRepositories: Bool?
    public let membersCanCreateRepositories: Bool?
    public let membersUrl: String?
    public let name: String?
    public let nodeId: String?
    public let ownedPrivateRepos: Int?
    public let plan: Plan?
    public let privateGists: Int?
    public let publicGists: Int?
    public let publicMembersUrl: String?
    public let publicRepos: Int?
    public let reposUrl: String?
    public let totalPrivateRepos: Int?
    public let twitterUsername: String?
    public let twoFactorRequirementEnabled: Bool?
    public let type: String?
    public let url: String?

    enum CodingKeys: String, CodingKey {
        case avatarUrl = "avatar_url"
        case billingEmail = "billing_email"
        case blog = "blog"
        case collaborators = "collaborators"
        case company = "company"
        case createdAt = "created_at"
        case defaultRepositoryPermission = "default_repository_permission"
        case descriptionField = "description"
        case diskUsage = "disk_usage"
        case email = "email"
        case eventsUrl = "events_url"
        case followers = "followers"
        case following = "following"
        case hasOrganizationProjects = "has_organization_projects"
        case hasRepositoryProjects = "has_repository_projects"
        case hooksUrl = "hooks_url"
        case htmlUrl = "html_url"
        case id = "id"
        case isVerified = "is_verified"
        case issuesUrl = "issues_url"
        case location = "location"
        case login = "login"
        case membersAllowedRepositoryCreationType = "members_allowed_repository_creation_type"
        case membersCanCreateInternalRepositories = "members_can_create_internal_repositories"
        case membersCanCreatePrivateRepositories = "members_can_create_private_repositories"
        case membersCanCreatePublicRepositories = "members_can_create_public_repositories"
        case membersCanCreateRepositories = "members_can_create_repositories"
        case membersUrl = "members_url"
        case name = "name"
        case nodeId = "node_id"
        case ownedPrivateRepos = "owned_private_repos"
        case plan
        case privateGists = "private_gists"
        case publicGists = "public_gists"
        case publicMembersUrl = "public_members_url"
        case publicRepos = "public_repos"
        case reposUrl = "repos_url"
        case totalPrivateRepos = "total_private_repos"
        case twitterUsername = "twitter_username"
        case twoFactorRequirementEnabled = "two_factor_requirement_enabled"
        case type = "type"
        case url = "url"
    }

    public init(avatarUrl: String?, billingEmail: String?, blog: String?, collaborators: Int?, company: String?, createdAt: String?, defaultRepositoryPermission: String?, descriptionField: String?, diskUsage: Int?, email: String?, eventsUrl: String?, followers: Int?, following: Int?, hasOrganizationProjects: Bool?, hasRepositoryProjects: Bool?, hooksUrl: String?, htmlUrl: String?, id: Int?, isVerified: Bool?, issuesUrl: String?, location: String?, login: String?, membersAllowedRepositoryCreationType: String?, membersCanCreateInternalRepositories: Bool?, membersCanCreatePrivateRepositories: Bool?, membersCanCreatePublicRepositories: Bool?, membersCanCreateRepositories: Bool?, membersUrl: String?, name: String?, nodeId: String?, ownedPrivateRepos: Int?, plan: Plan?, privateGists: Int?, publicGists: Int?, publicMembersUrl: String?, publicRepos: Int?, reposUrl: String?, totalPrivateRepos: Int?, twitterUsername: String?, twoFactorRequirementEnabled: Bool?, type: String?, url: String?) {
        self.avatarUrl = avatarUrl
        self.billingEmail = billingEmail
        self.blog = blog
        self.collaborators = collaborators
        self.company = company
        self.createdAt = createdAt
        self.defaultRepositoryPermission = defaultRepositoryPermission
        self.descriptionField = descriptionField
        self.diskUsage = diskUsage
        self.email = email
        self.eventsUrl = eventsUrl
        self.followers = followers
        self.following = following
        self.hasOrganizationProjects = hasOrganizationProjects
        self.hasRepositoryProjects = hasRepositoryProjects
        self.hooksUrl = hooksUrl
        self.htmlUrl = htmlUrl
        self.id = id
        self.isVerified = isVerified
        self.issuesUrl = issuesUrl
        self.location = location
        self.login = login
        self.membersAllowedRepositoryCreationType = membersAllowedRepositoryCreationType
        self.membersCanCreateInternalRepositories = membersCanCreateInternalRepositories
        self.membersCanCreatePrivateRepositories = membersCanCreatePrivateRepositories
        self.membersCanCreatePublicRepositories = membersCanCreatePublicRepositories
        self.membersCanCreateRepositories = membersCanCreateRepositories
        self.membersUrl = membersUrl
        self.name = name
        self.nodeId = nodeId
        self.ownedPrivateRepos = ownedPrivateRepos
        self.plan = plan
        self.privateGists = privateGists
        self.publicGists = publicGists
        self.publicMembersUrl = publicMembersUrl
        self.publicRepos = publicRepos
        self.reposUrl = reposUrl
        self.totalPrivateRepos = totalPrivateRepos
        self.twitterUsername = twitterUsername
        self.twoFactorRequirementEnabled = twoFactorRequirementEnabled
        self.type = type
        self.url = url
    }
}
