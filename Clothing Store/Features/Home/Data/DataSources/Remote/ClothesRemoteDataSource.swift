//
//  ClothesRemoteDataSource.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//

final class ClothesRemoteDataSource {

    private let apiClient: any APIClientProtocol

    init(apiClient: any APIClientProtocol) {
        self.apiClient = apiClient
    }

    func getClothes() async throws -> [ClothesDTOs] {

        let endpoint = Endpoint(
            path: "/api-ecommerce",
            method: .get
        )

        return try await apiClient.request(endpoint)
    }
}

