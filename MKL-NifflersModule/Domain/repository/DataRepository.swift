//
//  DataRepository.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 10/08/2024.
//

import Foundation

protocol DataRepository {
    
    func saveItem() async throws -> Bool
    func fetchItems() -> Bool
}
