//
//  TabBarVC.swift
//  Created by Matthieu on 5/10/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {
    
    let sb = UIStoryboard(name: "Tutorial", bundle: nil)
     
    override func viewDidAppear(animated: Bool) {
        
        if(!NSUserDefaults.standardUserDefaults().boolForKey("hasLaunchedAlready"))
        {
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "hasLaunchedAlready")
            NSUserDefaults.standardUserDefaults().synchronize()
            
            // This is the first launch ever
            let vc = self.sb.instantiateViewControllerWithIdentifier("topLayerPageVC")
            self.presentViewController(vc, animated: true, completion: nil)
            
        }else{
//            if FIRAuth.auth()?.currentUser == nil {
//                // No user is signed in go to Main Page
//                let vc = self.storyboard!.instantiateViewControllerWithIdentifier("MainPageNavi") as! UINavigationController
//                self.presentViewController(vc, animated: true, completion: nil)
//            }
        }
    }
    
    
}
