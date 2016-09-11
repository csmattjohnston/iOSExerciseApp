//
//  mainPageVC.swift
//  Created by Matthieu on 3/11/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class MainPageVC: UIViewController,FBSDKLoginButtonDelegate {
    let fbButton = Facebook().getFacebookButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        if(FBSDKAccessToken.currentAccessToken() != nil){
            //user is already logged in
            print("user already logged in")
        }else{
            //show the login button
            getFacebookButton()
        }
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        // SUCCESSFUL LOG IN, go to Main Page
        let vc = self.storyboard!.instantiateViewControllerWithIdentifier("TabBarView") as! UITabBarController
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
    }
    
    func getFacebookButton(){
        fbButton.frame = CGRectMake(0,0,180,40)
        fbButton.center = self.view.center
        fbButton.delegate = self
        self.view.addSubview(fbButton)
    }
    
    
}