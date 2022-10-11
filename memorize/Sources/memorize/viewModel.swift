//
//  ViewModel.swift
//  memorize
//
//  Created by Valentin Weinhaeupl on 05.10.22.
//

import Foundation

class ViewModel {
    typealias Card = Model<String>.Card
    
    static let values = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"]
    
    var model = Model(numberOfPairsOfCards: 12 ){values[$0]}
    var cards: [Card]{
     return model.cards
    }
}