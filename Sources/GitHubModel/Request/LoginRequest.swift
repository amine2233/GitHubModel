//
//  File.swift
//  
//
//  Created by Amine Bensalah on 15/07/2020.
//

import Foundation

public struct LoginRequest: Codable {
    public let code: String
    public let email: String?
    public let name: String?
    public let password: String?

    public init(code: String, email: String?, name: String?, password: String?) {
        self.code = code
        self.email = email
        self.name = name
        self.password = password
    }
}
