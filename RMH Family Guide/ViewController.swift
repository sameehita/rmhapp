//
//  ViewController.swift
//  RMH Family Guide
//
//  Created by Sameehita Mohan on 5/17/17.
//
//

import UIKit
import GoogleMaps
import GooglePlaces
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

        
        // You don't need to modify the default init(nibName:bundle:) method.
        
    override func loadView() {
            // Create a GMSCameraPosition that tells the map to display the
            // coordinate -33.86,151.20 at zoom level 6.
            let camera = GMSCameraPosition.camera(withLatitude: 42.279594, longitude: -83.732124, zoom: 12.0)
            let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
            view = mapView
            
            // Creates a marker in the center of the map.
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: 42.279594, longitude: -83.732124)
            marker.title = "Ann Arbor"
            marker.snippet = "USA"
            marker.map = mapView
        }

}

