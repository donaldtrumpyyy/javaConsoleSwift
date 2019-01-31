//
//  AdditionViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/11/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class AdditionViewController: UIViewController {

    @IBOutlet weak var démonLabel: UILabel!
    @IBOutlet weak var additionLabel: UILabel!
    
    @IBAction func stepperAddition(_ sender: UIStepper) {
        if(sender.value == 6) {
            additionLabel.text = String(Int(666))
            démonLabel.text  = "Le nombre du démon !"
        }else{
            additionLabel.text = String(Int(sender.value))
            démonLabel.text = nil
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
