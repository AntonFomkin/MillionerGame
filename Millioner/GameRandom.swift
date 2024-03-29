//
//  GameRandom.swift
//  Millioner
//
//  Created by Anton Fomkin on 26.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation

class GameRandom: Strategy {
    var arrUsedQuestion : [Int] = []
    
    func getNumberQuestion(numberOfQuestion: Int) -> Int {
        var result = true
        var randomInt: Int = 0
        let countQuestion = Game.shared.dictQuestion!
        
        while result && arrUsedQuestion.count < countQuestion.question.count {
            randomInt = Int.random(in: 1..<countQuestion.question.count + 1)
            var count = 0
            for (_,value) in arrUsedQuestion.enumerated() {
                
                if value == randomInt {
                    count += 1
                    break
                }
            }
            if count == 0 {
                arrUsedQuestion.append(randomInt)
                result = false
            }
        }
        return randomInt
    }
}
