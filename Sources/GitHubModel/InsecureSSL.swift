import Foundation

public enum InsecureSSL: String, Codable {
    case secure = "0"
    case insecure = "1"

    public init(_ rawValue: String?) {
        guard let rawValue = rawValue else {
            self = .secure
            return
        }
        switch rawValue {
        case "1":
            self = .insecure
        default:
            self = .secure
        }
    }
}
