//
//  StoreItemUseCaseImpl.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

struct StoreItemUseCaseImpl: StoreItemUseCase {
    
    typealias T = MarketRequirement
    
    
    private let repository: DataRepository
        
    init(repository: DataRepository) {
        self.repository = repository
    }
    
    func storeItem(collectionName: String, marketRequirement: MarketRequirement) async throws -> DomainResponse<MarketRequirement?> {
        let result = try await repository.storeItem(collectionName: collectionName, marketRequirement: marketRequirement)
            
        switch result.status {
            
        case .SUCCESS:
            if let marketRequirement = result.data as? MarketRequirement {
                return DomainResponse(data: marketRequirement, status: .SUCCESS, message: result.message)
            } else {
                return DomainResponse(data: nil, status: .FAILURE_BY_MAPPER, message: result.message)
            }
            
        case .FAILURE:
            return DomainResponse(data: nil, status: .FAILURE, message: result.message)
        }
    }
    
    
}
