import Foundation

public class Webhook: Codable {

    public let action: String?
    public let sender: Sender
    public let repository: Repository
    public let organization: Organization?

    public init(action: String?, sender: Sender, repository: Repository, organization: Organization?) {
        self.action = action
        self.sender = sender
        self.repository = repository
        self.organization = organization
    }
}
