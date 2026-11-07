//
//  ClothesMapper.swift
//  Clothing Store
//
//  Created by Adrian Flores Herrera on 11/6/26.
//

extension ClothesDTOs {
    
    
    func toListDomain() -> Clothes {
        
        return Clothes(
                       id: id,
                       title: title,
                       description: description,
                       type: style,
                       image: img,
                       size: sizeList,
                       price: price,
                       isFreeDelivery: isFreeShipping
        )
    }
}
