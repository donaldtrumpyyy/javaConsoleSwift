//
//  MilesKmViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/2/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class MilesKmViewController: UIViewController {

    @IBOutlet weak var résultatLabel: UILabel!
    @IBOutlet weak var mileLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func slider(_ sender: UISlider) {
        updateDisplay()
    }
    
    func updateDisplay() {
        let montantMiles = slider.value
        let resultat = Double(montantMiles) * 1.6
        
        résultatLabel.text = String(Int(resultat))
        mileLabel.text = String(Int(montantMiles))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
