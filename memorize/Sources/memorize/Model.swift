//
//  Model.swift
//  memorize
//
//  Created by Valentin Weinhaeupl on 05.10.22.
//

import Foundation

//struct: call by Value, class: call by Reference
//als Model immer Struct, weil read only, einzige Wahrheit, keiner kann auf einmal zerfetzen
struct Model <ContentType>{
    
    
    private (set) var cards: [Card]
    
    init(numberOfPairsOfCards: Int, content: (Int) -> ContentType){
        cards = []
        
        for pairIndex in 0..<numberOfPairsOfCards{
            let content1 = content(pairIndex)
            let content2 = content(pairIndex)
            cards.append(Card(id: 2*pairIndex, content: content1, isFaceUp: true))
            cards.append(Card(id: 2*pairIndex + 1, content: content2, isFaceUp: true))
        }

        //cards[4].isFaceUp = false
        //nicht sicher
        //cards.shuffle()
    }
    
    struct Card/* : Identifiable*/{
        var id: Int
        
        var content: ContentType
        var isFaceUp = true
        
    }
}
