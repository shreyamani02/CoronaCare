//
//  ViewController.swift
//  CoronaCare
//
//  Created by Shreya Mani on 6/14/20.
//  Copyright © 2020 Shreya Mani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signUp: UIButton!
    
    @IBOutlet weak var Login: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        // Do any additional setup after loading the view.
    }
    func setUpElements(){
        Utilities.styleFilledButton(signUp)
        Utilities.styleHollowButton(Login)
    }


}

