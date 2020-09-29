//
//  loginGeneralViewController.swift
//  CoronaCare
//
//  Created by RAGHU MANI on 6/14/20.
//  Copyright © 2020 Shreya Mani. All rights reserved.
//

import UIKit

class loginGeneralViewController: UIViewController {
    
    @IBOutlet weak var job: UIButton!
    
    @IBOutlet weak var help: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
            // Do any additional setup after loading the view.
    }
    func setUpElements(){
        Utilities.styleFilledButton(job)
        Utilities.styleHollowButton(help)
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
