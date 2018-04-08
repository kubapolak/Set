//
//  Card.swift
//  Set
//
//  Created by Mac on 4/8/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

struct Card: Hashable {
    
    var hashVaue: Int { return identifier }
    
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
