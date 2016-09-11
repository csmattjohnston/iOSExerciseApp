//
//  Facebook.swift
//  Created by Matthieu on 8/13/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import FBSDKLoginKit

class Facebook {

    
    func getFacebookButton() -> FBSDKLoginButton{
        let loginButton = FBSDKLoginButton()
        loginButton.readPermissions = ["public_profile","email","user_friends"]
        loginButton.frame = CGRectMake(0,0,180,40)
        return loginButton
    }
    
    func loggedInUserData(){
        let graphRequest = FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"email,first_name,last_name"],HTTPMethod: "GET")
        graphRequest.startWithCompletionHandler{
            (connection,result,error) -> Void in
            if(error != nil ){
                print(error.localizedDescription)
            }else{
                print(result)
            }
        }
        
    }
    
    func getProfilePicture() -> String{
        let userID = FBSDKAccessToken.currentAccessToken().userID as NSString
        let facebookProfileUrl = "http://graph.facebook.com/\(userID)/picture?type=large"
        return facebookProfileUrl
    }
}