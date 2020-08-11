import Foundation

public struct AccessTokenPayload: Codable {
    public let refreshToken: String
    public let accessToken: String?
    public let expiredAt: String

    public init(refreshToken: String, accessToken: String?, expiredAt: Date, dateFormat: DateFormatter = .default()) {
        self.refreshToken = refreshToken
        self.accessToken = accessToken
        self.expiredAt = dateFormat.string(from: expiredAt)
    }
}

extension DateFormatter {
    public static func `default`() -> DateFormatter {
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
        return dateformatter
    }
}
