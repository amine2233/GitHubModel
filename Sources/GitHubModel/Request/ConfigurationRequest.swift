//
//  ConfigurationRequest.swift
//  GitHubModel
//
//  Created by Amine Bensalah on 11/07/2020.
//

import Foundation

public struct ConfigurationRequest: Encodable {
    /// Use web to create a webhook. Default: web. This parameter only accepts the value web.
    public let name: String
    /// Required. Key/value pairs to provide settings for this webhook.
    public let config: Config
    /// Determines what events the hook is triggered for. Default: push
    public let events: [Event]
    /// Determines if notifications are sent when the webhook is triggered. Set to true to send notifications. Default: true
    public let active: Bool

    public init(name: String = "web", config: Config, events: [Event], active: Bool) {
        self.name = name
        self.config = config
        self.events = events
        self.active = active
    }
}
