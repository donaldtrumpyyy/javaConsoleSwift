//
//  ConversionsHome1ViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/2/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class ConversionsHome1ViewController: UIViewController {

    @IBOutlet weak var chooseButton: UILabel!
    
    @IBOutlet weak var farenheitCelsiusButton: UIButton!
    @IBOutlet weak var milesKmButton: UIButton!
    @IBOutlet weak var livresKgButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        farenheitCelsiusButton.layer.cornerRadius = 5
        milesKmButton.layer.cornerRadius = 5
        livresKgButton.layer.cornerRadius = 5
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
