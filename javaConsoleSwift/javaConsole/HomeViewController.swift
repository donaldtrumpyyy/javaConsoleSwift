//
//  HomeViewController.swift
//  Calculatrice-IMC
//
//  Created by Corentin de Maupeou on 9/28/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit
import UserNotifications

class HomeViewController: UIViewController {

    @IBOutlet weak var mapButtonHome: UIButton!
    @IBOutlet weak var conversionsButtonHome: UIButton!
    @IBOutlet weak var mathPourboireButtonHome: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        conversionsButtonHome.layer.cornerRadius = 5
        mapButtonHome.layer.cornerRadius = 5
        mathPourboireButtonHome.layer.cornerRadius = 5
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in })
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}
