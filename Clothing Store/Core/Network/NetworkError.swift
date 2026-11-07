//
//  NetworkError.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//

enum NetworkError : Error {
    
     case invalidURL
     case invalidResponse
     case httpError(Int)
     case decodingError(Error)
     case requestFailed(Error)
    
}

