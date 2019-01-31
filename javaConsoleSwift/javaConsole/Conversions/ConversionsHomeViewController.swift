//
//  ConversionsHomeViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/1/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class ConversionsHomeViewController: UIViewController {

    @IBOutlet weak var yenEurosButton: UIButton!
    @IBOutlet weak var livresEurosButton: UIButton!
    @IBOutlet weak var dollarsEurosButton: UIButton!
    @IBOutlet weak var francsEurosButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dollarsEurosButton.layer.cornerRadius = 5
        livresEurosButton.layer.cornerRadius = 5
        francsEurosButton.layer.cornerRadius = 5
        yenEurosButton.layer.cornerRadius = 5
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
