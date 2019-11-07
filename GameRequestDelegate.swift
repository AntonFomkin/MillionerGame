//
//  GameRequestDelegate.swift
//  Millioner
//
//  Created by Anton Fomkin on 30.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//

import Foundation
protocol GameRequestDelegate: class {
    func eventSaveDictRequest(dictRequest: Question)
}
