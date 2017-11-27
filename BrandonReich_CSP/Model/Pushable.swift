//
//  Edible.swift
//  BrandonReich_CSP
//
//  Created by Reich, Brandon on 11/20/17.
//  Copyright © 2017 CTEC. All rights reserved.
//
import Foundation
public protocol Pushable
    {
        var pushState : Bool {get set}
        func push() -> Void
        func isPushed() -> Void
    }
