//
//  francsEurosViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/2/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class francsEurosViewController: UIViewController {

    @IBOutlet weak var francsLabel: UILabel!
    @IBOutlet weak var résultatLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        updateDisplay()
    }
    
    func updateDisplay() {
        let montantFrancs = slider.value
        let resultat = Double(montantFrancs) * 0.85
        
        résultatLabel.text = String(Int(resultat))
        francsLabel.text = String(Int(montantFrancs))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDisplay()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
