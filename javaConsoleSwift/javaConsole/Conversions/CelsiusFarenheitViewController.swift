//
//  CelsiusFarenheitViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/2/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class CelsiusFarenheitViewController: UIViewController {

    @IBOutlet weak var résultatLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        updateDisplay()
    }
    
    func updateDisplay() {
        let montantFarenheit = slider.value
        let resultat = (Double(montantFarenheit) - 32) / 1.8
        
        résultatLabel.text = String(Int(resultat))
        farenheitLabel.text = String(Int(montantFarenheit))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
