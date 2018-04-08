//
//  Card.swift
//  Set
//
//  Created by Mac on 4/8/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import Foundation

struct Card: CustomStringConvertible {
    
//    var hashVaue: Int { return identifier }
    
    var description: String {
        return "\(number) \(color) \(shading) \(symbol) "
    }
    
    var number: Int
    var color: Color
    var shading: Shading
    var symbol: Symbol
    
    enum Symbol: String, CustomStringConvertible {
        var description: String { return self.rawValue }
        case diamond = "◇"
        case circle = "◦"
        case square = "□"
        
        static var all = [Symbol.diamond, .circle, .square]
    }
    
    enum Shading: String, CustomStringConvertible {
        var description: String { return self.rawValue }
        case solid = "solid"
        case striped = "striped"
        case open = "open"
        
        static var all = [Shading.solid, .striped, .open]
    }
    
    enum Color: String, CustomStringConvertible {
        var description: String { return self.rawValue }
        case green = "green"
        case blue = "blue"
        case red = "red"
        
        static var all = [Color.green, .blue, .red]
    }
    
    
//    private var identifier: Int
//
//    private static var identifierFactory = 0
//
//    private static func getUniqueIdentifier() -> Int {
//        identifierFactory += 1
//        return identifierFactory
//    }
    
    
}
