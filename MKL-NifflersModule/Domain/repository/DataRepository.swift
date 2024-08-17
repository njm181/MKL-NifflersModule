//
//  DataRepository.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 10/08/2024.
//

import Foundation

public protocol DataRepository {
    
    func storeItem(marketItem: MarketItem) async throws -> DataResultResponse<Any>
    func fetchItems() async throws -> DataResultResponse<Any>
}
