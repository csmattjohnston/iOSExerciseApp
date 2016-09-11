//
//  registerVC.swift
//  Created by Matthieu on 1/21/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    
    //Classes
    let alertClass = Alerts()
    let formatObjectsClass = FormatObjects()
    let sb = UIStoryboard(name: "Main", bundle: nil)

    @IBOutlet weak var findYourGym: UIButton!
    @IBOutlet weak var txtlastName: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtEmailAddress: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var requiredFields: UILabel!
    @IBOutlet weak var passwordField: UILabel!
    
    var gymAddress,gymName,selectedAge:String?
    
    
    @IBAction func backButtonTapped(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requiredFields.hidden = true
        passwordField.hidden = true
        formatObjectsClass.formatUITextFields(txtlastName, font: "HelveticaNeue-Thin", size: 20)
        formatObjectsClass.formatUITextFields(txtFirstName, font: "HelveticaNeue-Thin", size: 20)
        formatObjectsClass.formatUITextFields(txtEmailAddress, font: "HelveticaNeue-Thin", size: 20)
        formatObjectsClass.formatUITextFields(txtConfirmPassword, font: "HelveticaNeue-Thin", size: 20)
        formatObjectsClass.formatUITextFields(txtPassword, font: "HelveticaNeue-Thin", size: 20)
        
    }
    
    
    //keyboard functionality
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func registerTapped(sender: UIButton) {
        //hides keyboard
        self.txtEmailAddress.resignFirstResponder()
        self.txtPassword.resignFirstResponder()
        self.txtConfirmPassword.resignFirstResponder()
        self.txtFirstName.resignFirstResponder()
        self.txtlastName.resignFirstResponder()
        
        //assign new variables
        let email = txtEmailAddress.text
        let password = txtPassword.text
        let confirm = txtConfirmPassword.text
        let firstName = txtFirstName.text
        let lastName = txtlastName.text
        
        //alert validations
        if(password != confirm){
            passwordField.hidden = false
        }else{
            passwordField.hidden = true
        }
        
        if(email!.isEmpty || password!.isEmpty || confirm!.isEmpty){
            
            requiredFields.hidden = false
        }else{
            requiredFields.hidden = true
            
        }
        
        //        if all field are correct, then do the POST request
        if(!email!.isEmpty && !password!.isEmpty && !confirm!.isEmpty){
            
            
//            // Read data and react to changes
//            FIRAuth.auth()?.createUserWithEmail(email!, password: password!, completion: { user, error in
//                if  error != nil {
//                    let alert = self.alertClass.displayAlert(error!.localizedDescription, title: "Oops!")
//                    self.presentViewController(alert, animated: true, completion: nil)
//                    return
//                }
//                
//                //NO ERRORS, SIGN UP
//                else {
//                    //create dictionary
//                    let post = ["email": email!,
//                        "firstname": firstName!,
//                        "lastname": lastName!,
//                        "committment":40,
//                        "following":"",
//                        "followers":"",
//                        "gyms":"",
//                        "schedule":""]
//                    
//                    //add a new user under "users"
//                    self.db.child("users").childByAutoId().setValue(post)
//                    
//                    
//                    //Display success alert
//                    let alertController = UIAlertController(title: "Successful!", message:
//                        "Log in and find your Gym Buddy", preferredStyle: UIAlertControllerStyle.Alert)
//                    alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default,handler: {(alert: UIAlertAction!) in
//                        // go to Main Page
//                        let vc = self.sb.instantiateViewControllerWithIdentifier("MainPageNavi") as! UINavigationController
//                        self.presentViewController(vc, animated: true, completion: nil)
//                        
//                    }))
//                    
//                    self.presentViewController(alertController, animated: true, completion: nil)
//                    
//                }
//            })
//            
//        }
    }
    
//    
//    @IBAction func loginTapped(sender: UIButton) {
//        self.dismissViewControllerAnimated(false, completion: nil)
//        
//    }
    
}
}
