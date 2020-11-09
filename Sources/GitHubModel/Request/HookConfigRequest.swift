import Foundation

public struct HookConfigRequest: Codable {
    /// The media type used to serialize the payloads. Supported values include json and form. The default is form.
    public let contentType: String
    /// Determines whether the SSL certificate of the host for url will be verified when delivering payloads. Supported values include 0 (verification is performed) and 1 (verification is not performed). The default is 0. We strongly recommend not setting this to 1 as you are subject to man-in-the-middle and other attacks.
    public let insecureSSL: InsecureSSL

    public init(contentType: String = "json",
                insecureSSL: InsecureSSL) {
        self.contentType = contentType
        self.insecureSSL = insecureSSL
    }

    enum CodingKeys: String, CodingKey {
        case contentType = "content_type"
        case insecureSSL = "insecure_ssl"
    }
}
