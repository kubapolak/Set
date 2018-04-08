//
//  Set.swift
//  Set
//
//  Created by Mac on 4/8/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

struct Set {
    
    var deck = Deck()
    private(set) var cards = [Card]()
    
    init() {
        for _ in 1...24 {
            let index = cards.count.arc4random
            let card = deck.cards.removeFirst()
            cards.insert(card, at: index)
        }
    }
}
