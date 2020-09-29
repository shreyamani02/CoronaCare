//
//  businessViewController.swift
//  CoronaCare
//
//  Created by RAGHU MANI on 6/14/20.
//  Copyright © 2020 Shreya Mani. All rights reserved.
//

import UIKit

class businessViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var map: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        label.text = "Saratoga.com database of restaurants open for delivery/drive through/takeout: 30 Lake, Augie's, the Barrelhouse, Beer Wine Pizza, The Blue Hen, The Brook Tavern, Cantina, Chez Pierre, Dizzy Chicken, Dunning Street Station, Dunning Street Station, Farmers Hardware, Forno Bistro, Harvey's, The HIdeaway at Sartoga Lake, The Kettle REstaurant, Lake Ridge Restaurant, The Local Pub and Teahouse, Longellows, The Mansion of Saratoga, Mexican Connection, Morissey's, Nostalgia Ale House and Wine Bar, Old Bryan Inn, Palette Cafe, Peabody's PJ's Bar-B-QSA, ravenous, Salt and Char, Saratoga 5 Points Market & Deli, Sushi Thai Garden, Whole Harvest Company, The Wishing Well "
        // Do any additional setup after loading the view.
    }
    func setUpElements(){
        Utilities.styleFilledButton(map)
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
