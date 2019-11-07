//
//  GameSettingsDelegate.swift
//  Millioner
//
//  Created by Anton Fomkin on 25.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation

protocol GameSettingsDelegate: class {
    func eventChangeSettings(statusRandom: Bool)
}
