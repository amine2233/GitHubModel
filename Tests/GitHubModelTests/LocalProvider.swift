//
//  File.swift
//  
//
//  Created by amine on 27/06/2023.
//

import Foundation

public enum LocaleFileProviderError: Error {
	case url
	case data(Error)
	case other(String)

	init(reason: String) {
		self = .other(reason)
	}
}

public enum ProviderError: Error {
	case other(Error)
	case localeFile(LocaleFileProviderError)
}

struct LocaleFileProviderDefault {
	private let bundle: Bundle
	private let decoder: JSONDecoder

	init(
		bundle: Bundle,
		decoder: JSONDecoder = JSONDecoder()
	) {
		self.bundle = bundle
		self.decoder = decoder
	}

	func request<Model: Decodable>(
		type: Model.Type,
		forResource: String,
		ofFileType: String,
		inDirectory: String?,
		completion: (Result<Model, ProviderError>) -> Void
	) {
		runRequest(
			type: type,
			forResource: forResource,
			ofFileType: ofFileType,
			inDirectory: inDirectory,
			completion: completion
		)
	}

	private func runRequest<Model: Decodable>(
		type: Model.Type,
		forResource resource: String,
		ofFileType fileType: String,
		inDirectory directory: String?,
		completion: (Result<Model, ProviderError>) -> Void
	) {
		guard let url = bundle.path(forResource: resource, ofType: fileType, inDirectory: directory)
		else {
			let message =
			"url doesn't find check the bundle with resource: \(resource), type: \(fileType), directory: \(directory ?? "empty folder")"
			let error = LocaleFileProviderError(reason: message)
			completion(.failure(ProviderError.localeFile(error)))
			return
		}
		do {
			let urlPath = URL(fileURLWithPath: url)
			let data = try Data(contentsOf: urlPath)
			decoder.dateDecodingStrategy = .iso8601
			let json = try decoder.decode(type.self, from: data)
			completion(.success(json))
		} catch {
			let failure = LocaleFileProviderError.data(error)
			completion(.failure(ProviderError.localeFile(failure)))
		}
	}

	func data(
		forResource resource: String,
		ofFileType fileType: String,
		inDirectory directory: String?
	) throws -> Data {
		guard let url = bundle.path(forResource: resource, ofType: fileType, inDirectory: directory) else {
			throw LocaleFileProviderError.url
		}
		do {
			let urlPath = URL(fileURLWithPath: url)
			return try Data(contentsOf: urlPath)
		} catch {
			throw LocaleFileProviderError.data(error)
		}
	}
}
