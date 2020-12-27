import Foundation
import Identity

public struct HookConfigResponse: Codable, Identifiable {
    public typealias RawIdentifier = UUID
    /// The identity
    public var id: ID
    /// The media type used to serialize the payloads. Supported values include json and form. The default is form.
    public let contentType: String
    /// Determines whether the SSL certificate of the host for url will be verified when delivering payloads. Supported values include 0 (verification is performed) and 1 (verification is not performed). The default is 0. We strongly recommend not setting this to 1 as you are subject to man-in-the-middle and other attacks.
    public let insecureSSL: InsecureSSL
    /// If provided, the secret will be used as the key to generate the HMAC hex digest value in the X-Hub-Signature header.
    public let secret: String
    // The name of hook
    public let name: String
    // All the tags concerbed by hook
    public let tags: [String]
    // The repository name concerned by hook
    public let repository: String
    // Is enabled hook or not
    public let isEnabled: Bool
    // Create date
    public let createdAt: Date?
    // Update date
    public let updatedAt: Date?
    // Github hook id
    public let githubId: Identifier<Hook>
    
    public init(id: ID,
                contentType: String,
                insecureSSL: InsecureSSL,
                secret: String,
                name: String,
                tags: [String],
                repository: String,
                isEnabled: Bool,
                githubId: Identifier<Hook>,
                createdAt: Date?,
                updatedAt: Date? = nil) {
        self.id = id
        self.contentType = contentType
        self.insecureSSL = insecureSSL
        self.secret = secret
        self.name = name
        self.tags = tags
        self.repository = repository
        self.isEnabled = isEnabled
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.githubId = githubId
    }

    enum CodingKeys: String, CodingKey {
        case id
        case contentType = "content_type"
        case insecureSSL = "insecure_ssl"
        case secret
        case name
        case tags
        case repository
        case isEnabled = "is_enabled"
        case createdAt = "create_at"
        case updatedAt = "update_at"
        case githubId = "github_id"
    }
}
