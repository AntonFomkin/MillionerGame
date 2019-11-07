//
//  GameSettings.swift
//  Millioner
//
//  Created by Anton Fomkin on 25.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation

class GameSettings {
    var status : Bool = false
}

extension GameSettings: GameSettingsDelegate {
    func eventChangeSettings(statusRandom: Bool) {
        Game.shared.randomQuestion?.status = statusRandom
        Game.shared.addRandomState()
    }
}




