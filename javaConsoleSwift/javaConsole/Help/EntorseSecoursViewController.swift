//
//  EntorseSecoursViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 16/12/2018.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit
import UserNotifications

class EntorseSecoursViewController: UIViewController {
    
    @IBAction func timerButton(_ sender: UIButton) {
        setNotification(title: "Minuteur entorse", subtitle: "Minuteur fini ⏱", time: 600, identity: "timerEntorse")
        setAlert(title: "Minuteur", message: "Un minuteur de 10 minutes est en cours. \n Quittez l'application pour recevoir la notification.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setNotification(title: String, subtitle: String, time: TimeInterval, identity: String) {
        let alert = UNMutableNotificationContent()
        alert.title = title
        alert.subtitle = subtitle
        alert.sound = UNNotificationSound.default()
        alert.badge = 0
        
        let repeating = UNTimeIntervalNotificationTrigger(timeInterval: time, repeats: false)
        let request = UNNotificationRequest(identifier: identity, content: alert, trigger: repeating)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    func setAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Compris", style: UIAlertActionStyle.default, handler: { (action) in alert.dismiss(animated: true, completion: nil)}))
        self.present(alert, animated: true, completion: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
