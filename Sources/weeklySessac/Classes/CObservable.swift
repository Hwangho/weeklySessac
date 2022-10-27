//
//  CObservable.swift
//  weeklySessac
//
//  Created by 송황호 on 2022/10/28.
//

import Foundation

open class COBservable<T> {
    public var listener: ((T) -> Void)?
    
    public var value: T {
        didSet {
            listener?(value)
        }
    }
    
    public init(_ value: T) {
        self.value = value
    }
    
    public func bind(_ closure: @escaping (T) -> Void) {
        closure(value)
        listener = closure
    }
}

