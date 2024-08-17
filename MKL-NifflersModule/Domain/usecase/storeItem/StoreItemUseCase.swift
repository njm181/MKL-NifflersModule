//
//  StoreItemUseCase.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

public protocol StoreItemUseCase {
    
    associatedtype T
    
    func storeItem(marketItem: MarketItem) async throws -> DomainResponse<T?>
}
