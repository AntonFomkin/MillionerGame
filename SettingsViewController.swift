//
//  SettingsViewController.swift
//  Millioner
//
//  Created by Anton Fomkin on 24.10.2019.
//  Copyright © 2019 Anton Fomkin. All rights reserved.
//


import UIKit

class SettingsViewController: UIViewController {
    var switchState: Bool = false
    var delegate : GameSettingsDelegate?
    @IBOutlet weak var switchControl: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = GameSettings()
        self.switchControl.isOn = Game.shared.statusRandomQuestion
       
    }
  
    @IBAction func swithChange(_ sender: UISwitch) {
        DispatchQueue.main.async {[weak self] in
            self?.delegate?.eventChangeSettings(statusRandom: sender.isOn)
        }
    }
 
}
