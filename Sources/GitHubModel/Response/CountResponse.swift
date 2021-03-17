import Foundation

public struct CountResponse: Codable {
    public let count: Int

    public init(count: Int) {
        self.count = count
    }
}
