//
//  Set.swift
//  Set
//
//  Created by Mac on 4/8/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

struct Set {
    private(set) var cards = [Card]()
    
    init() {
        for _ in 1...24 {
            let card = Card()
            cards += [card]
        }
    }
}
