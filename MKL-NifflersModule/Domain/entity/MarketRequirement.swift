//
//  MarketRequirement.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

public struct MarketRequirement {
    public let marketItem: MarketItem
    public let quantity: Int
    
    public init(marketItem: MarketItem, quantity: Int) {
        self.marketItem = marketItem
        self.quantity = quantity
    }
}
