//
//  AutreSecoursViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 03/12/2018.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit

class AutreSecoursViewController: UIViewController {

    @IBOutlet weak var hémoragieButton: UIButton!
    @IBOutlet weak var étouffementButton: UIButton!
    @IBOutlet weak var malaiseVagalButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hémoragieButton.layer.cornerRadius = 5
        étouffementButton.layer.cornerRadius = 5
        malaiseVagalButton.layer.cornerRadius = 5
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
