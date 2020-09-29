//
//  mapViewController.swift
//  hackathon
//
//  Created by Shreya Mani on 6/13/20.
//  Copyright © 2020 Shreya Mani. All rights reserved.
//

import UIKit
import GoogleMaps
class mapViewController: UIViewController {
//30 Lake, Augie's, the Barrelhouse, Beer Wine Pizza, The Blue Hen, The Brook Tavern, Cantina, Chez Pierre, Dizzy Chicken, Dunning Street Station, Dunning Street Station, Farmers Hardware, Forno Bistro, Harvey's, The HIdeaway at Sartoga Lake, The Kettle REstaurant, Lake Ridge Restaurant, The Local Pub and Teahouse, Longellows, The Mansion of Saratoga, Mexican Connection, Morissey's, Nostalgia Ale House and Wine Bar, Old Bryan Inn, Palette Cafe, Peabody's PJ's Bar-B-QSA, ravenous, Salt and Char, Saratoga 5 Points Market & Deli, Sushi Thai Garden, Whole Harvest Company, The Wishing Well (Database I created from a public list of restaurants on Saratoga's city website)
    override func viewDidLoad() {
        super.viewDidLoad()
        GMSServices.provideAPIKey("AIzaSyCVYq8dFBxKrFwRVa_POO76FLOhIpcX0eQ")
        let camera = GMSCameraPosition.camera(withLatitude: 37.2561, longitude: -122.0358, zoom: 15.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        var x = 0
        var database = [[37.2561,-122.0358],[37.2586,-122.0326],[37.2586,-122.0333],[37.2575,-122.0342],[37.2590,-122.0326]]
        for marker in 1...5 {
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: database[x][0], longitude: database[x][1])
            marker.title = "Restaurant"
            marker.snippet = "Restaurants in Saratoga"
            marker.map = mapView
            x += 1
        }

        // Do any additional setup after loading the view.
    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
