//
//  Config.swift
//  GitHubModel
//
//  Created by Amine Bensalah on 11/07/2020.
//

import Foundation

public struct Config: Codable, Equatable {
    /// The media type used to serialize the payloads. Supported values include json and form. The default is form.
    public let contentType: String
    /// Determines whether the SSL certificate of the host for url will be verified when delivering payloads. Supported values include 0 (verification is performed) and 1 (verification is not performed). The default is 0. We strongly recommend not setting this to 1 as you are subject to man-in-the-middle and other attacks.
    public let insecureSSL: String
    /// The URL to which the payloads will be delivered.
    public let url: URL

    public init(contentType: String = "json",
                insecureSSL: String,
                url: URL) {
        self.contentType = contentType
        self.insecureSSL = insecureSSL
        self.url = url
    }

    enum CodingKeys: String, CodingKey {
        case contentType = "content_type"
        case insecureSSL = "insecure_ssl"
        case url
    }
}
