//
//  loginJobViewController.swift
//  CoronaCare
//
//  Created by RAGHU MANI on 6/14/20.
//  Copyright © 2020 Shreya Mani. All rights reserved.
//

import UIKit
import FirebaseAuth
class loginJobViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var login: UIButton!
    
    @IBOutlet weak var error: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElments()
        // Do any additional setup after loading the view.
    }
    func setUpElments(){
        Utilities.styleTextField(email)
        Utilities.styleTextField(password)
        Utilities.styleFilledButton(login)
        error.alpha = 0
    }
    

    @IBAction func loginTapped(_ sender: Any) {
        let emailText = email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let passwordText = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            Auth.auth().signIn(withEmail: emailText, password: passwordText) { (result, error) in
                if error != nil{
                    self.error.text = error!.localizedDescription
                    self.error.alpha = 1
                }
                else{
                    let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.jobHomeScreenViewController) as? homeJobViewController
                    
                    self.view.window?.rootViewController = homeViewController
                    self.view.window?.makeKeyAndVisible()
                }
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

