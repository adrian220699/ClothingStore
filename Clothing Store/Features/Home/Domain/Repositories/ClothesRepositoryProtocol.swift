//
//  Untitled.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//

protocol ClothesRepositoryProtocol {
    
    func getClothes() async throws -> [Clothes]
}
