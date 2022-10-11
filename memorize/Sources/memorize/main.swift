//
//  main.swift
//  memorize-console
//
//  Created by Valentin Weinhaeupl on 05.10.22.
//

import Foundation

var viewmodel = ViewModel()



    print("---------------------")

    var temp = 0;
    
    for card in  viewmodel.cards{
        temp += 1;
        if(temp == 1){
            print("| ", terminator: "")
        }
        if(temp % 6 == 0){
            print(" ", terminator: "")
            if(card.isFaceUp){
                print(card.content, terminator: "")
            }else{
                print("*", terminator: "")
            }
            
            print(" |")
            print("| ", terminator: "")
        }else{
            print(" ", terminator: "")
            if(card.isFaceUp){
                print(card.content, terminator: "")
            }else{
                print("*", terminator: "")
            }
            print(" ", terminator: "")
        }
        
    }
    print("")
    print("---------------------")
    print("")



