//
//  Login.swift
//  GitHubNotificationModel
//
//  Created by Amine Bensalah on 18/05/2020.
//

import Foundation

public typealias Secret = String

public struct Login {
    public let username: String
    public let token: Secret

    public init(username: String, token: Secret) {
        self.username = username
        self.token = token
    }
}
