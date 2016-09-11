//
//  exercisesTable.swift
//  Created by Matthieu on 4/5/16.
//  Copyright © 2016 Sir. All rights reserved.
//


import UIKit

class RegionsTableVC: UITableViewController {

    let formatObjectsClass = FormatObjects()
    let UnivseralClass = UniversalObjectsClass()
    override func viewDidLoad() {
        super.viewDidLoad()
        formatObjectsClass.formatNavigationController(self.navigationController!, title: "REGIONS", fontName:UnivseralClass.getUniversalFont() as String)
        
    }
}