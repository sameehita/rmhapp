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
        let chosenmap = 1;

            var camera = GMSCameraPosition.camera(withLatitude: 42.2803, longitude: -83.7273, zoom: 15)
            var mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
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
       
        if(chosenmap==1){
             camera = GMSCameraPosition.camera(withLatitude: 42.2803, longitude: -83.7273, zoom: 12)
             mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
            view = mapView
            
            // Creates a marker in the center of the map.
            let handsonmuseum = GMSMarker()
            handsonmuseum.position = CLLocationCoordinate2D(latitude: 42.281826, longitude: -83.746418)
            handsonmuseum.title = "Ann Arbor Hands On Museum"
            handsonmuseum.snippet = "220 E. Ann Street"
            handsonmuseum.map = mapView
            
            let pettingfarm = GMSMarker()
            pettingfarm.position = CLLocationCoordinate2D(latitude: 42.323377, longitude: -83.680252)
            pettingfarm.title = "The Petting Farm"
            pettingfarm.snippet = "Ann Arbor, MI"
            pettingfarm.map = mapView
            
            let ymca = GMSMarker()
            ymca.position = CLLocationCoordinate2D(latitude: 42.280962, longitude: -83.752995)
            ymca.title = "Ann Arbor YMCA"
            ymca.snippet = "Ann Arbor, MI"
            ymca.map = mapView
            
            let naturalhistorymuseum = GMSMarker()
            naturalhistorymuseum.position = CLLocationCoordinate2D(latitude: 42.278294, longitude: -83.734474)
            naturalhistorymuseum.title = "University of Michigan Museum of Natural History"
            naturalhistorymuseum.snippet = "Ann Arbor, MI"
            naturalhistorymuseum.map = mapView
            
            let arb = GMSMarker()
            arb.position = CLLocationCoordinate2D(latitude: 42.280613, longitude: -83.726916)
            arb.title = "Nichols Arboretum (The Arb)"
            arb.snippet = "Ann Arbor, MI"
            arb.map = mapView
            
            let stonycreekaa = GMSMarker()
            stonycreekaa.position = CLLocationCoordinate2D(latitude: 42.291630, longitude: -83.798169)
            stonycreekaa.title = "Stony Creek Preschool (Ann Arbor)"
            stonycreekaa.snippet = "3460 Dexter Rd, Ann Arbor, MI"
            stonycreekaa.map = mapView
            
            let stonycreekmilan = GMSMarker()
            stonycreekmilan.position = CLLocationCoordinate2D(latitude: 42.139178, longitude: -83.680603)
            stonycreekmilan.title = "Stony Creek Preschool (Milan)"
            stonycreekmilan.snippet = "10200 Carpenter Rd, Milan, MI"
            stonycreekmilan.map = mapView

            
            

            
        }

        
   }



}
