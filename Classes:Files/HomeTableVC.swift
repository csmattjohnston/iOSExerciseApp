//
//  homeTableVC.swift
//  Created by Matthieu on 3/12/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class HomeTableVC: UITableViewController{
    
    let formatObjClass = FormatObjects()
    let alertClass = Alerts()
    var tableArray = [String]()
    let UnivseralClass = UniversalObjectsClass()
    let FacebookClass = Facebook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(FBSDKAccessToken.currentAccessToken() != nil){
            Facebook().loggedInUserData()
            tableArray = ["HomeTableCell","MyProgressCell"]
        } else{
            let vc = self.storyboard!.instantiateViewControllerWithIdentifier("MainPageNavi") as! UINavigationController
            self.presentViewController(vc, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func profileTapped(sender: UIBarButtonItem) {
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        let height = 200
        return CGFloat(height);//Choose your custom row height
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)  -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath)
        
        if(indexPath.row == 0){
            let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath) as! HomeTableCell
            cell.todaysScheduleLabel = self.formatObjClass.formatLargeCellLabels(cell.todaysScheduleLabel,label_txt:"TODAY'S SCHEDULE",size:25,fontName: UnivseralClass.getUniversalFont() as String)
        } else if(indexPath.row == 1){
            let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath) as! HomeTableCell
            cell.myProgressLabel = self.formatObjClass.formatLargeCellLabels(cell.myProgressLabel,label_txt:"MY PROGRESS",size:25,fontName: UnivseralClass.getUniversalFont() as String)
        }
        
        return cell
    }
    
    
    
}
