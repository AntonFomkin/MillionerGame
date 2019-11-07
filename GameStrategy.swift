//
//  GameStrategy.swift
//  Millioner
//
//  Created by Anton Fomkin on 25.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation
import UIKit

protocol Strategy {
    func getNumberQuestion(numberOfQuestion: Int) -> Int
}
