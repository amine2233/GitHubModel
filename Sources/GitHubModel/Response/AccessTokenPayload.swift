import Foundation

public struct AccessTokenPayload: Codable {
    public let refreshToken: String
    public let accessToken: String?
    public let expiredAt: String

    public init(refreshToken: String, accessToken: String?, expiredAt: Date) {
        self.refreshToken = refreshToken
        self.accessToken = accessToken
        self.expiredAt = "\(expiredAt)"
    }
}
