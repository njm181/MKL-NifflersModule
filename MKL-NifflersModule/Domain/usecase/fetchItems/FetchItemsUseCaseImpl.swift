//
//  FetchItemsUseCaseImpl.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

struct FetchItemsUseCaseImpl: FetchItemsUseCaseProtocol {
    typealias T = [MarketRequirement]
    
    private let repository: DataRepository
        
    init(repository: DataRepository) {
        self.repository = repository
    }
    
    func fetchItems(collectionName: String) async throws -> DomainResponse<[MarketRequirement]?> {
        let result = try await repository.fetchItems(collectionName: collectionName)
        
        switch result.status {
        case .SUCCESS:
            if let listOfMR = result.data as? [MarketRequirement] {
                return DomainResponse(data: listOfMR, status: .SUCCESS, message: result.message)
            } else {
                return DomainResponse(data: nil, status: .FAILURE_BY_MAPPER, message: result.message)
            }
        case .FAILURE:
            return DomainResponse(data: nil, status: .FAILURE, message: result.message)
        }
    }
    
    
    
}
