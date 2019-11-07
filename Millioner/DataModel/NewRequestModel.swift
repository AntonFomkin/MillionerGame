//
//  NewRequestModel.swift
//  Millioner
//
//  Created by Anton Fomkin on 30.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation

class GameNewRequest: GameDictonaryDelegate{
  
    func eventNewRequest(data: Question) {
        Game.shared.dictQuestion = data

    }
}


