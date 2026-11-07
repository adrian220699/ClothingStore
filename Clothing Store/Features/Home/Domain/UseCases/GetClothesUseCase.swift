//
//  GetClothesUseCase.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//

final class GetClothesUseCase {
    
    private let repository : ClothesRepositoryProtocol
    
    init(repository: ClothesRepositoryProtocol) {
        self.repository = repository
    }
    
    func execute() async throws -> [Clothes] {
        try await repository.getClothes()
    }
}
