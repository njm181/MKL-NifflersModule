//
//  MarketList.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

public struct MarketList {
    public let listOfItems: [MarketRequirement]
    public let id: String
    
    public init(listOfItems: [MarketRequirement], id: String) {
        self.listOfItems = listOfItems
        self.id = id
    }
}
