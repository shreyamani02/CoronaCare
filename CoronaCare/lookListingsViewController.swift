//
//  lookListingsViewController.swift
//  CoronaCare
//
//  Created by RAGHU MANI on 6/14/20.
//  Copyright © 2020 Shreya Mani. All rights reserved.
//

import UIKit
import WebKit
class lookListingsViewController: UIViewController {
    @IBOutlet weak var web: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://docs.google.com/spreadsheets/d/1cPaAS551fmXpMmiKnzbreECqgHcbfOTt9Uy9DjYpT-Y/edit?usp=sharing")
        let myRequest = URLRequest(url: myURL!)
        web.load(myRequest)
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
