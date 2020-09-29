//
//  signUpNeedHelpViewController.swift
//  CoronaCare
//
//  Created by RAGHU MANI on 6/14/20.
//  Copyright © 2020 Shreya Mani. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseFirestore

class signUpNeedHelpViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var age: UITextField!
    
    @IBOutlet weak var id: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var signUp: UIButton!
    
    @IBOutlet weak var error: UILabel!
    private var x: CollectionReference!
    var idArrays = [String]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpElements()
        x = Firestore.firestore().collection("users")
            // Do any additional setup after loading the view.
    }
    func setUpElements(){
        Utilities.styleTextField(name)
        Utilities.styleTextField(age)
        Utilities.styleTextField(id)
        Utilities.styleTextField(email)
        Utilities.styleTextField(password)
        Utilities.styleFilledButton(signUp)
        error.alpha = 0
    }
    func validateFields() -> String?{
        if name.text?.trimmingCharacters(in:  .whitespacesAndNewlines) == "" || age.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || email.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || password.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || id.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Please fill in all fields,"
        }
        for i in idArrays{
            if id.text?.trimmingCharacters(in: .whitespacesAndNewlines) == i{
                return "That ID has been taken. Please pick a different 8-10 digit numerical ID"
            }
            
        }
        let cleanedPassword = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if Utilities.isPasswordValid(cleanedPassword) == false{
            return "Please make sure your password is at least 8 characters, contains a special character and a number."
        }
        /*if cleanedPassword != cleanedPassword2 {
            return "Please make sure that both passwords are the same"
        }*/
        return nil
    }
    @IBAction func signUpTapped(_ sender: Any) {
        let error = validateFields()
        if error != nil{
            showError(error!)
        }
        else{
            let nameText = name.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let ageText = id.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let emailText = email.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let passwordText = password.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let idText = id.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            Auth.auth().createUser(withEmail: emailText, password: passwordText) { (result, err) in
                
                if err != nil{
                    self.showError("Error creating user")
                }
                else{
                    let db = Firestore.firestore()
                 db.collection("users").addDocument(data: ["name": nameText, "age":ageText,"identifier ID": idText, "uid": result!.user.uid]) {(error)in }
                    if error != nil{
                        self.showError("Error saving user data")
                    }
                }
                self.transitionToHome()
            }
        }
    }
    func showError(_ message: String){
            error.text = message
            error.alpha = 1
        }
    func transitionToHome(){
            let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.needHelpHome) as? homeNeedHelpViewController
            
            self.view.window?.rootViewController = homeViewController
            self.view.window?.makeKeyAndVisible()
            //performSegue(withIdentifier: "HospitalHomeViewController", sender: nil)
            
    }
    
    @IBAction func switchPressed(_ sender: UISwitch) {
        if (sender.isOn == true){
            error.text = "Please agree to the contract before logging into the application"
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

}
