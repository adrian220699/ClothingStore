//
//  ClothesDTOs.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//

struct ClothesDTOs : Decodable {
    
    let id : Int
    let title : String
    let description : String
    let style : String
    let img : String
    let sizeList : [String]
    let price : Double
    let currency : CurrencyDTOs
    let installments : Int
    let isFreeShipping : Bool
    
}
