import Foundation

public struct RefreshTokenRequest: Codable {
    public let user: String
    public let refreshToken: String

    public enum CodingKeys: String, CodingKey {
        case user
        case refreshToken = "refresh_token"
    }

    public init(user: String, refreshToken: String, accessToken: String) {
        self.user = user
        self.refreshToken = refreshToken
    }
}
