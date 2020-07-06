//
//  Label.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 01/07/2020.
//

import Foundation

public struct Label: Codable, Equatable {
    public let color: String?
    public let defaultField: Bool?
    public let descriptionField: String?
    public let id: Int?
    public let name: String?
    public let nodeId: String?
    public let url: URL?

    enum CodingKeys: String, CodingKey {
        case color
        case defaultField = "default"
        case descriptionField = "description"
        case id
        case name
        case nodeId = "node_id"
        case url
    }
}
