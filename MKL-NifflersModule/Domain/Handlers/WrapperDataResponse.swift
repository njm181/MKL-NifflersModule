//
//  WrapperDataResponse.swift
//  MKL-NifflersModule
//
//  Created by Nico Molina on 17/08/2024.
//

import Foundation

public struct WrapperDataResponse {
    public static func wrapToDomain<T>(_ data: T) -> Wrapper<T>{
        return Wrapper(data: data)
    }
}

public struct Wrapper<T> {
    public let data: T
    
    public func getDataAs<U>(type: U.Type) -> U? {
        return data as? U
    }
}
