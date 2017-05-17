//
//  MapViewController.swift
//  RMH Family Guide
//
//  Created by Jessica Hirsh on 5/17/17.
//
//

//import Foundation

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

class MapViewController: UIViewController {
    
    //MARK: Properties
    
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
        let x = 1;
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 42.2803,-83.7273 at zoom level 12.
        var camera = GMSCameraPosition.camera(withLatitude: 42.280302, longitude: -83.727278, zoom: 15.0)
        var mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView

        // Creates a marker in the center of the map.
        let RMH = GMSMarker()
        RMH.position = CLLocationCoordinate2D(latitude: 42.280302, longitude: -83.727278)
        RMH.title = "Ronald McDonald House"
        RMH.snippet = "Ann Arbor, Michigan"
        RMH.map = mapView

        let Mott = GMSMarker()
        Mott.position = CLLocationCoordinate2D(latitude: 42.281853, longitude: -83.727756)
        Mott.title = "C.S. Mott Children's Hospital"
        Mott.snippet = "Ann Arbor, Michigan"
        Mott.map = mapView


        /***************AREA GROCERY STORES, MARKETS, MALLS *****************/
        if(x != 1){
            camera = GMSCameraPosition.camera(withLatitude: 42.280302, longitude: -83.727278, zoom: 10.0)
            mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
            view = mapView

            let stricklands = GMSMarker()
            stricklands.position = CLLocationCoordinate2D(latitude: 42.277066, longitude: -83.731190)
            stricklands.title = "Strickland's Market"
            stricklands.snippet = "1352 Geddes"
            stricklands.map = mapView

            let kroger = GMSMarker()
            kroger.position = CLLocationCoordinate2D(latitude: 42.304727, longitude: -83.709037)
            kroger.title = "Kroger"
            kroger.snippet = "2641 Plymouth Rd"
            kroger.map = mapView

            let buschs = GMSMarker()
            buschs.position = CLLocationCoordinate2D(latitude: 42.303775, longitude: -83.691475)
            buschs.title = "Busch's"
            buschs.snippet = "2020 Green Rd"
            buschs.map = mapView

            let meijer = GMSMarker()
            meijer.position = CLLocationCoordinate2D(latitude: 42.239429, longitude: -83.766022)
            meijer.title = "Meijer"
            meijer.snippet = "3145 Ann Arbor-Saline Rd"
            meijer.map = mapView

            let meijer2 = GMSMarker()
            meijer2.position = CLLocationCoordinate2D(latitude: 42.233585, longitude: -83.676483)
            meijer2.title = "Meijer"
            meijer2.snippet = "3825 Carpenter Rd"
            meijer2.map = mapView

            let target = GMSMarker()
            target.position = CLLocationCoordinate2D(latitude: 42.243819, longitude: -83.769888)
            target.title = "Target"
            target.snippet = "2000 West Waters Rd"
            target.map = mapView

            let walmart = GMSMarker()
            walmart.position = CLLocationCoordinate2D(latitude: 42.188795, longitude: -83.734859)
            walmart.title = "Walmart"
            walmart.snippet = "7000 E. Michigan Ave"
            walmart.map = mapView

            let arborlandmall = GMSMarker()
            arborlandmall.position = CLLocationCoordinate2D(latitude: 42.257154, longitude: -83.687636)
            arborlandmall.title = "Arborland Mall"
            arborlandmall.snippet = "3693 Washtenaw Ave"
            arborlandmall.map = mapView
            
            let briarwoodmall = GMSMarker()
            briarwoodmall.position = CLLocationCoordinate2D(latitude: 42.240368, longitude: -83.747575)
            briarwoodmall.title = "Briarwood Mall"
            briarwoodmall.snippet = "100 Briarwood Circle"
            briarwoodmall.map = mapView
            /***************END AREA GROCERY STORES, MARKETS, MALLS *****************/
        }
    }
    
}

