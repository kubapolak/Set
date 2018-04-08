//
//  Deck.swift
//  Set
//
//  Created by Mac on 4/8/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

struct Deck {
    
    var cards = [Card]()
    
    init() {
        for color in Card.Color.all {
            for shading in Card.Shading.all {
                for symbol in Card.Symbol.all {
                    for i in 1...4 {
                        let index = cards.count.arc4random
                        let card = Card(number: i, color: color, shading: shading, symbol: symbol)
                        cards.insert(card, at: index)
                    }
                }
            }
        }
    }
}
