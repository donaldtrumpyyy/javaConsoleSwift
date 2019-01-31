//
//  MapViewController.swift
//  javaConsole
//
//  Created by Corentin de Maupeou on 10/3/18.
//  Copyright © 2018 Corentin de Maupeou. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var setLocation: UIBarButtonItem!
    @IBOutlet weak var mapKit: MKMapView!
    
    @IBAction func setLocation(_ sender: UIBarButtonItem) {
        if(self.mapKit.showsUserLocation == true) {
            self.mapKit.showsUserLocation = false
            setAlert(title: "Localisation désactivée", message: "Votre localisation est maintenant désactivée.")
        }else{
            self.mapKit.showsUserLocation = true
            setAlert(title: "Localisation activée", message: "Votre localisation est maintenant allumée.")
        }
    }
    
    @IBAction func setMap(_ sender: UIBarButtonItem) {
        if(self.mapKit.mapType == .satelliteFlyover) {
            self.mapKit.mapType = .standard
            setAlert(title: "Carte standard", message: "Votre carte est maintenant en mode standard.")
        }else if(self.mapKit.mapType == .satellite){
            self.mapKit.mapType = .satelliteFlyover
            setAlert(title: "Carte satellite Flyover", message: "Votre carte est maintenant en mode satellite Flyover.")
        }else{
            self.mapKit.mapType = .satellite
            setAlert(title: "Carte satellite", message: "Votre carte est maintenant en mode satellite.")
        }
    }
    
    var manager = CLLocationManager()
    
    func openMap() {
        mapKit.mapType = .satelliteFlyover
        self.mapKit.showsUserLocation = true
        self.mapKit.showsScale = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
        openMap()
    }
    
    func paris() {
        let location = CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945)
    
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapKit.setRegion(region, animated: true)
    
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Tour Eiffel"
        annotation.subtitle = "Paris"
        mapKit.addAnnotation(annotation)
        
        mapKit.mapType = .satelliteFlyover
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func setAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Compris", style: UIAlertActionStyle.default, handler: { (action) in alert.dismiss(animated: true, completion: nil)}))
        self.present(alert, animated: true, completion: nil)
    }

}
