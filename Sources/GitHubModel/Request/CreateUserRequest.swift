//
//  File.swift
//  
//
//  Created by Amine Bensalah on 15/07/2020.
//

import Foundation

public struct CreateUserRequest: Codable {
    /// User's unique identifier.
    public var user: String

    /// User's full name.
    public var name: String

    /// User's email address.
    public var email: String
}
