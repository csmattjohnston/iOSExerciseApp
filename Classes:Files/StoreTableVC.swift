//
//  StoreTableVC.swift
//  Created by Matthieu on 5/15/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class StoreTableVC: UITableViewController {

    let formatObjClass = FormatObjects()
    let UnivseralClass = UniversalObjectsClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        formatObjClass.formatNavigationController(self.navigationController!, title: "STORE", fontName: UnivseralClass.getUniversalFont() as String)
        
    }

}
