//
//  YenEurosViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/9/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class YenEurosViewController: UIViewController {

    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var résultatLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        updateDisplay()
    }
    
    func updateDisplay() {
        let montantYen = slider.value
        let resultat = Double(montantYen) * 0.008
        
        résultatLabel.text = String(Int(resultat))
        yenLabel.text = String(Int(montantYen))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDisplay()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
