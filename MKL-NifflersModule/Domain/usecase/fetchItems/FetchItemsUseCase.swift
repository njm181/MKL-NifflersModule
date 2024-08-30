//
//  FetchItemsUseCase.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

public protocol FetchItemsUseCase {
    
    associatedtype T
    
    func fetchItems(collectionName: String) async throws -> DomainResponse<T?>
}
