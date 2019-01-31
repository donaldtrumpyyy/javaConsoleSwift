//
//  LivresEurosViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/1/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class LivresEurosViewController: UIViewController {

    @IBOutlet weak var livresLabel: UILabel!
    @IBOutlet weak var résultatLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        updateDisplay()
    }
    
    func updateDisplay() {
        let montantLivres = slider.value
        let resultat = Double(montantLivres) * 1.12
        
        résultatLabel.text = String(Int(resultat))
        livresLabel.text = String(Int(montantLivres))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
