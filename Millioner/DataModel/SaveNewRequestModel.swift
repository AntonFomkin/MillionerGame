//
//  SaveNewRequestModel.swift
//  Millioner
//
//  Created by Anton Fomkin on 30.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation

class GameSaveDictonary: GameSaveDictonaryDelegate {
 //   var save: Bool = false
    func eventSaveNewRequest() {
 //       Game.shared.newDictonaryQuestion?.save = saveMarker
        Game.shared.saveNewDictonary()
    }   
}

