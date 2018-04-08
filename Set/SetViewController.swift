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
            setCardSymbol(with: "\(game.cards[index].hashVaue)", on: button)
        }
    }
    
    private func setCardSymbol(with string: String, on button: UIButton) {
        
        let attributedString = NSAttributedString(string: string, attributes: symbolAttributes)
        button.setAttributedTitle(attributedString, for: .normal)
    }
    
    
    
}
