//
//  mathPourboireViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/4/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class mathPourboireViewController: UIViewController {
    
    @IBOutlet weak var additionLabel: UILabel!
    @IBOutlet weak var résultatLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        updateDisplay()
    }
    
    func updateDisplay() {
        let additions = slider.value
        
        let montantAddition = additions
        let resultat = Double(montantAddition) * 0.1
        
        résultatLabel.text = String(Int(resultat))
        additionLabel.text = String(Int(montantAddition))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
