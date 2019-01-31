//
//  BrulureSecoursViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 04/12/2018.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit
import UserNotifications

class BrulureSecoursViewController: UIViewController {

    @IBAction func buttonCall(_ sender: UIButton) {
        setCall(string: "tel://112")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setCall(string: String) {
        let call = NSURL(string: string)!
        UIApplication.shared.openURL(call as URL)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
