//
//  StepToStep.swift
//  Millioner
//
//  Created by Anton Fomkin on 25.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation
import UIKit

class GameStepToStep: Strategy {
    func getNumberQuestion(numberOfQuestion: Int) -> Int {
        return numberOfQuestion + 1
    }
}


