//
//  DataResultResponse.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

public struct DataResultResponse<T> {
    public var data: T?
    public let status: DataResultResponseStatus
    public let message: String?
    
    public init(data: T, status: DataResultResponseStatus, message: String?) {
        self.data = data
        self.status = status
        self.message = message
    }
}
