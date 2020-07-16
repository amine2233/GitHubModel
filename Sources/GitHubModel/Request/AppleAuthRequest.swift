//
//  File.swift
//  
//
//  Created by Amine Bensalah on 16/07/2020.
//

import Foundation

public struct AppleAuthRequest: Decodable {

    public enum CodingKeys: String, CodingKey {
        case user
        case state
        case idToken = "id_token"
    }

    public let user: CreateUserRequest
    public let state: String
    public let idToken: String

    public init(user: CreateUserRequest, state: String, idToken: String) {
        self.user = user
        self.state = state
        self.idToken = idToken
    }
}
