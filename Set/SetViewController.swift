//
//  ViewController.swift
//  Set
//
//  Created by Mac on 4/8/18.
//  Copyright © 2018 Mac. All rights reserved.
//

import UIKit

class SetViewController: UIViewController {
    
    private lazy var game = Set()

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateViewFromModel()
    }
    
    @IBOutlet private var cardButtons: [UIButton]!
    
    private var visibleCardButtons: [UIButton]! {
        return cardButtons?.filter { !$0.superview!.isHidden }
    }
    
    @IBAction func cardButtonPressed(_ sender: UIButton) {
    }
    
    
    private func updateViewFromModel() {
        for index in visibleCardButtons.indices {
            let button = visibleCardButtons[index]
            setCardSymbol(with: "\(game.cards[index].symbol)", of: colors[0], on: button)
        }
    }
    
    private func setCardSymbol(with string: String, of color: UIColor, on button: UIButton) {
        var attributes = symbolAttributes
        attributes[NSAttributedStringKey.foregroundColor] = colors[0].withAlphaComponent(0.15)
        let attributedString = NSAttributedString(string: string, attributes: attributes)
        button.setAttributedTitle(attributedString, for: .normal)
        
    }
    
    
    
}
