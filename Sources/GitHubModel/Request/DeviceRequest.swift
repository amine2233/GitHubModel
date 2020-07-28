import Foundation

public struct DeviceRequest: Codable {
    public var token: String
    public var name: String
    public var user: String

    public init(token: String, name: String, user: String) {
        self.token = token
        self.name = name
        self.user = user
    }
}
