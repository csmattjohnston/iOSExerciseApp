//
//  forgotPasswordVC.swift
//  Created by Matthieu on 3/6/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class ForgotPasswordVC: UIViewController {
    
    let formatOBjectsClass = FormatObjects()
    let alertClass = Alerts()
    
    @IBOutlet weak var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatOBjectsClass.formatUITextFields(email, font: "HelveticaNeue-Thin", size: 20)
    }
    
    @IBAction func sendRecoveryEmailTapped(sender: UIButton) {
        let emailtxt = self.email.text!
        
        if(emailtxt.isEmpty){
            alertClass.displayAlert("Enter in an email address", title: "Oops!")
        }else{
            let alert = UIAlertController(title: "Confirm", message:"Send password recovery email to \(emailtxt)?", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default, handler: sendEmail))
            alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.Cancel, handler: nil))
            
            self.presentViewController(alert, animated: false, completion: nil)
        }
        
        
    }
    
    func sendEmail(alert: UIAlertAction!){

//        FIRAuth.auth()?.sendPasswordResetWithEmail(email.text!) { error in
//            if error != nil {
//                // An error happened.
//            } else {
//                // Password reset email sent.
//            }
//        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
}
