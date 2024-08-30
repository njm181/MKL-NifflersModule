//
//  DataRepository.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 10/08/2024.
//

import Foundation

public protocol DataRepository {
    
    func storeItem(collectionName: String, marketItem: MarketRequirement) async throws -> DataResultResponse<Any>
    func fetchItems() async throws -> DataResultResponse<Any>
}
