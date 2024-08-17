//
//  File.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

public struct DomainResponse<T> {
    public let data: T?
    public let status: DomainResultStatus
    public let message: String?
    
    public init(data: T, status: DomainResultStatus, message: String?) {
        self.data = data
        self.status = status
        self.message = message
    }
}
