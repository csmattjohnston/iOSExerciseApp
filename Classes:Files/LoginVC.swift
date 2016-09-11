//
//  loginVC.swift
//  Created by Matthieu on 1/21/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var emailAddress: UITextField!
    @IBOutlet weak var password: UITextField!
    let alertClass = Alerts()
    let formatOBjectsClass = FormatObjects()
    let sb = UIStoryboard(name: "Main", bundle: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatOBjectsClass.formatUITextFields(emailAddress, font: "HelveticaNeue-Thin", size: 20)
        formatOBjectsClass.formatUITextFields(password, font: "HelveticaNeue-Thin", size: 20)
    }
    
    @IBAction func loginTapped(sender: UIButton) {
        self.emailAddress.resignFirstResponder()
        self.password.resignFirstResponder()
        
        //assign new variables
        let useremail = emailAddress.text
        let userpassword = password.text
        
//        //if all field are correct, then do the POST request
//        if(!useremail!.isEmpty && !userpassword!.isEmpty){
//            FIRAuth.auth()?.signInWithEmail(useremail!, password: userpassword!) { (user, error) in
//                // [START_EXCLUDE]
//                if error != nil {
//                    let alert = self.alertClass.displayAlert(error!.localizedDescription, title: "Oops!")
//                    self.presentViewController(alert, animated: true, completion: nil)
//                    return
//                }
//                else{
//                    NSUserDefaults.standardUserDefaults().setValue(user!.uid, forKey: "uid")
//                    NSUserDefaults.standardUserDefaults().synchronize()
//                    // SUCCESSFUL LOG IN, go to Main Page
//                    let vc = self.sb.instantiateViewControllerWithIdentifier("TabBarView") as! UITabBarController
//                    self.presentViewController(vc, animated: true, completion: nil)
//                
//                }}
//            
//            
//        }
        
        
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
