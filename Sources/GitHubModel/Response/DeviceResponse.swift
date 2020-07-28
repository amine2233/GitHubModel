import Foundation

public struct DeviceResponse: Codable {
    public var id: UUID
    public var token: String
    public var name: String

    public init(id: UUID, token: String, name: String) {
        self.id = id
        self.token = token
        self.name = name
    }
}
