//
//  DataRepository.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 10/08/2024.
//

import Foundation

public protocol DataRepository {
    
    func storeItem(collectionName: String, collectionName: String, marketRequirement: MarketRequirement) async throws -> DataResultResponse<Any>
    func fetchItems(collectionName: String) async throws -> DataResultResponse<Any>
}
