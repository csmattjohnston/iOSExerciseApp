//
//  exercisesTable.swift
//  Created by Matthieu on 4/5/16.
//  Copyright © 2016 Sir. All rights reserved.
//


import UIKit

class ExerciseTableVC: UITableViewController {
    
    
    var imgArray = [String](),exerciseNames = [String](),difficulty = [String]()
    let formatObjectsClass = FormatObjects()
    let UnivseralClass = UniversalObjectsClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatObjectsClass.formatNavigationController(self.navigationController!, title: "SHOULDERS", fontName: UnivseralClass.getUniversalFont() as String)
        
        exerciseNames = ["Alternating Cable Shoulder Press","Dumbell Press","Alternating Deltoid Raise","Test"]
        difficulty = ["Easy","Medium","Hard","Easy"]
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exerciseNames.count
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int{
        return 1
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        var height = 0
        
        if(indexPath.row == 0){
            height = 70
        }else{
            height = 100
        }
        
        return CGFloat(height);//Choose your custom row height
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)  -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("ExerciseTableCell", forIndexPath: indexPath) as! ExerciseTableCell
            let row = indexPath.row
        
            cell.exerciseImg = formatObjectsClass.formatCellImage(cell.exerciseImg, imageToAdd: "black.jpeg")
            cell.exerciseName = formatObjectsClass.formatCellLabels(cell.exerciseName, label_txt: exerciseNames[row],size:18,fontName: UnivseralClass.getUniversalFont() as String)
            cell.difficulty = formatObjectsClass.formatCellLabels(cell.difficulty, label_txt: difficulty[row],size:18,fontName: UnivseralClass.getUniversalFont() as String)
        
        
        return cell
    }
    
    
    
    
}
