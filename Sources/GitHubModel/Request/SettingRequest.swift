import Foundation

public struct SettingRequest: Codable {
    public let user: String
    public let isPurchased: Bool

    public enum CodingKeys: String, CodingKey {
        case user
        case isPurchased = "is_purchased"
    }

    public init(user: String, isPurchased: Bool) {
        self.user = user
        self.isPurchased = isPurchased
    }
}
