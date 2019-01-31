//
//  MenuSecoursViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 03/12/2018.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit
import UserNotifications

class CallSecoursViewController: UIViewController {

    @IBAction func generalButton(_ sender: UIButton) {
        setCall(string: "tel://112")
    }
    
    @IBAction func policeButton(_ sender: UIButton) {
        setCall(string: "tel://17")
    }
    
    @IBAction func pompiersButton(_ sender: UIButton) {
        setCall(string: "tel://18")
    }
    
    @IBAction func samuButton(_ sender: UIButton) {
        setCall(string: "tel://15")
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
