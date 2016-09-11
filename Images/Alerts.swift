//
//  alerts.swift
//  Created by Matthieu on 5/8/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class Alerts: UIAlertController {
    
    
    func displayAlert(msg:String,title:String) -> UIAlertController {
        
        let alert = UIAlertController(title: title, message:msg, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler:nil))
        return alert
    }
    
//    func displayAlert(msg:String,title:String,dismiss:BooleanType,view:UIViewController) -> UIAlertController {
//        
//        let alert = UIAlertController(title: title, message:msg, preferredStyle: UIAlertControllerStyle.Alert)
//        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.Default, handler:{ (alert: UIAlertAction!) in
//            view.dismissViewControllerAnimated(true, completion: nil)}))
//        return alert
//    }
}
