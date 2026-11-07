//
//  APIClient.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//

import Foundation

protocol APIClientProtocol {
    func request<T: Decodable>(
        _ endpoint: Endpoint
    ) async throws -> T
}

final class APIClient: APIClientProtocol {

    private let baseURL: String
    private let session: URLSession

    init(
        baseURL: String = "https://devsapihub.com",
        session: URLSession = .shared
    ) {
        self.baseURL = baseURL
        self.session = session
    }

    func request<T: Decodable>(
        _ endpoint: Endpoint
    ) async throws -> T {

        // 1. Construir la URL
        guard let url = URL(
            string: baseURL + endpoint.path
        ) else {
            throw NetworkError.invalidURL
        }

        // 2. Configurar la petición
        var request = URLRequest(url: url)
        request.httpMethod = endpoint.method.rawValue

        request.setValue(
            "application/json",
            forHTTPHeaderField: "Accept"
        )

        // 3. Realizar la petición
        let data: Data
        let response: URLResponse

        do {
            (data, response) = try await session.data(
                for: request
            )
        } catch {
            throw NetworkError.requestFailed(error)
        }

        // 4. Validar la respuesta HTTP
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.invalidResponse
        }

        guard (200...299).contains(
            httpResponse.statusCode
        ) else {
            throw NetworkError.httpError(
                httpResponse.statusCode
            )
        }

        // 5. Decodificar los datos
        do {
            return try JSONDecoder().decode(
                T.self,
                from: data
            )
        } catch {
            throw NetworkError.decodingError(error)
        }
    }
}

