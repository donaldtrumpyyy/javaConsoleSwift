//
//  DollarsEurosViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/1/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class DollarsEurosViewController: UIViewController {

    @IBOutlet weak var dollarNameLabel: UILabel!
    @IBOutlet weak var dollarLabel: UILabel!
    @IBOutlet weak var résultatLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func changerValue(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0) {
            dollarNameLabel.text = "Dollars (Américain)"
            dollar = 0.9
        }else if(sender.selectedSegmentIndex == 1) {
            dollarNameLabel.text = "Dollars (Canadien)"
            dollar = 0.66
        }else{
            dollarNameLabel.text = "Dollars (Australien)"
            dollar = 0.62
        }
        
        updateDisplay()
    }
    
    @IBAction func slider(_ sender: UISlider) {
        updateDisplay()
    }
    
    var dollar = 0.9
    
    func updateDisplay() {
        let montantDollars = slider.value
        let resultat = Double(montantDollars) * dollar
        
        résultatLabel.text = String(Int(resultat))
        dollarLabel.text = String(Int(montantDollars))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
