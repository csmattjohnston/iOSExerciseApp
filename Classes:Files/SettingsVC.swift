//
//  SettingsVC.swift
//  Created by Matthieu on 5/15/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class SettingsVC: UIViewController,FBSDKLoginButtonDelegate{
    let fbButton = Facebook().getFacebookButton()
    
    override func viewDidLoad() {
        //show the login button
        fbButton.frame = CGRectMake(0,0,180,40)
        fbButton.center = self.view.center
        fbButton.delegate = self
        self.view.addSubview(fbButton)
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("logged out")
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("MainPageNavi") as! UINavigationController
        self.presentViewController(vc, animated: true, completion: nil)
    }
}
