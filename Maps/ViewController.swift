//
//  ViewController.swift
//  Maps
//
//  Created by Ajitesh on 18/07/17.
//  Copyright © 2017 Ajitesh. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate {
    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let latitude: CLLocationDegrees = 27.1
        let longitute: CLLocationDegrees = 78.03
        let lanDelta: CLLocationDegrees = 0.05
        let lonDelta: CLLocationDegrees = 0.05
        
        let span = MKCoordinateSpan(latitudeDelta: lanDelta, longitudeDelta: lonDelta)
        let cordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitute)
        let region = MKCoordinateRegion(center: cordinates, span: span)
        map.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

