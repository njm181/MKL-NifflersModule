//
//  StoreItemUseCase.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

public protocol StoreItemUseCaseProtocol {
    
    associatedtype T
    
    func storeItem(collectionName: String, documentName: String, marketRequirement: MarketRequirement) async throws -> DomainResponse<T?>
}
