import Foundation

public struct SettingResponse: Codable {
    public var id: UUID
    public let isPurchased: Bool

    public enum CodingKeys: String, CodingKey {
        case id
        case isPurchased = "is_purchased"
    }

    public init(id: UUID, isPurchased: Bool) {
        self.id = id
        self.isPurchased = isPurchased
    }
}
