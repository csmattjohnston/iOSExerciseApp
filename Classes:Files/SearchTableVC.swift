//
//  SearchTableVC.swift
//  Created by Matthieu on 5/15/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class SearchTableVC: UITableViewController {

    let formatObjClass = FormatObjects()
    let alertClass = Alerts()
    var imgArray = [String]()
    var nameArray = [String]()
    var goalArray = [String]()
    var gymArray = [String]()
    let UnivseralClass = UniversalObjectsClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatObjClass.formatNavigationController(self.navigationController!, title: "SEARCH", fontName: UnivseralClass.getUniversalFont() as String)

        
        imgArray = ["buddy2.jpg",
                    "buddy2.jpg",
                    "buddy2.jpg",
                    "buddy2.jpg",
                    "buddy2.jpg"]
        
        nameArray = ["Roger",
                      "Kim",
                      "Rachel",
                      "Chris",
                      "Matt"]
        goalArray = ["Body Building","Cardio","Yoga","Weight Training","Cardio"]
        gymArray = ["24 Hour Fitness","Planet Fitness","Fitness 19","24 Hour Fitness","Snap Fitness"]

    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        let height = 200
        return CGFloat(height);//Choose your custom row height
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)  -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("SearchTableCell", forIndexPath: indexPath) as! SearchTableCell
        
        let row = indexPath.row
        cell.profileImgButton = formatObjClass.formatCellImage(cell.profileImgButton, imageToAdd: imgArray[row])
        cell.nameLabel = formatObjClass.formatCellLabels(cell.nameLabel, label_txt: nameArray[row],size:20,fontName: UnivseralClass.getUniversalFont() as String)
        cell.goalLabel = formatObjClass.formatCellLabels(cell.goalLabel, label_txt: goalArray[row],size:18,fontName: UnivseralClass.getUniversalFont() as String)
        cell.gymLabel = formatObjClass.formatCellLabels(cell.gymLabel, label_txt: gymArray[row],size:18,fontName: UnivseralClass.getUniversalFont() as String)
        return cell
        
    }

}
