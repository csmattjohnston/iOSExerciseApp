//
//  ProfileTableVC.swift
//  Created by Matthieu on 5/15/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class ProfileTableVC: UITableViewController {
    
    let formatObjClass = FormatObjects()
    var tableArray = [String]()
    let UnivseralClass = UniversalObjectsClass()
    
    override func viewDidLoad() {

        tableArray = ["profileDisplayCell","profilePhotosCell","aboutSectionCell"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        var height = 200
        
        if(indexPath.row == 0){
            height = 300
        }
        return CGFloat(height);//Choose your custom row height
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)  -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath)
        
        if(indexPath.row == 0){
            let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath) as! ProfileTableCell
            cell.commitmentLabel = self.formatObjClass.formatCellLabels(cell.commitmentLabel, label_txt: "COMMITTMENT", size: 15, fontName: UnivseralClass.getUniversalFont() as String)
            cell.buddiesLabel = self.formatObjClass.formatCellLabels(cell.buddiesLabel, label_txt: "BUDDIES", size: 15, fontName: UnivseralClass.getUniversalFont() as String)
            cell.profileImage = self.formatObjClass.formatProfileImageView(cell.profileImage , imageToAdd: Facebook().getProfilePicture())
            cell.commitmentNumber = self.formatObjClass.formatCommitmmentLabels(cell.commitmentNumber, label_txt: 10, size: 44, fontName: UnivseralClass.getUniversalFont() as String)
            cell.buddyNumber = self.formatObjClass.formatCellLabels(cell.buddyNumber, label_txt: "250", size: 44, fontName: UnivseralClass.getUniversalFont() as String)
        }
        else if(indexPath.row == 1){
            let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath) as! ProfileTableCell
            cell.profilePhotosLabel = self.formatObjClass.formatLargeCellLabels(cell.profilePhotosLabel,label_txt:"PHOTOS",size:20,fontName: UnivseralClass.getUniversalFont() as String)
        } else if(indexPath.row == 2){
            let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath) as! ProfileTableCell
            cell.aboutSectionLabel = self.formatObjClass.formatLargeCellLabels(cell.aboutSectionLabel,label_txt:"ABOUT",size:20,fontName: UnivseralClass.getUniversalFont() as String)
        }
        
        return cell
    }
}
