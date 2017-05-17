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

            let camera = GMSCameraPosition.camera(withLatitude: 42.2803, longitude: -83.7273, zoom: 15)
            let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
            view = mapView
        
            // Creates a marker in the center of the map.
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: 42.2803, longitude: -83.7273)
            marker.title = "Ronald McDonald House"
            marker.snippet = "Ann Arbor, MI"
            marker.map = mapView
        
            let marker1 = GMSMarker()
            marker1.position = CLLocationCoordinate2D(latitude: 42.2819, longitude: -83.7278)
            marker1.title = "CS Mott's Children's Hospital"
            marker1.snippet = "Ann Arbor, MI"
            marker1.map = mapView

        }

}

