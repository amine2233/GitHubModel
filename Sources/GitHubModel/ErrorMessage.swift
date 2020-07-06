//
//  File.swift
//  DarkSkyModel
//
//  Created by Amine Bensalah on 12/03/2020.
//  Copyright © 2020 Amine Bensalah. All rights reserved.
//

import Foundation

public protocol Debuggable {
    var reason: String { get }
}

public struct ErrorMessage: Error, Equatable, Debuggable {
    // MARK: - Properties

    public let id: String
    public let title: String
    public let message: String
    public let reason: String

    // MARK: - Methods

    public init(title: String, message: String, reason: String? = nil) {
        id = UUID().uuidString
        self.title = title
        self.message = message
        self.reason = reason ?? ""
    }
}
