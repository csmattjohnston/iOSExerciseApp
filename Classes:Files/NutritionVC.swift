//
//  NutritionVC.swift
//  Created by Matthieu on 5/15/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class NutritionVC: UIViewController {
    
    let alertClass = Alerts()
    let formatOBjectsClass = FormatObjects()
    
    @IBOutlet weak var createOwnPlanButton: UIButton!
    @IBOutlet weak var dinnerButton: UIButton!
    @IBOutlet weak var lunchButton: UIButton!
    @IBOutlet weak var breakfastButton: UIButton!
    
    override func viewDidLoad() {
        formatOBjectsClass.formatNavigationController(self.navigationController!, title: "NUTRITION", fontName: "HelveticaNeue-Thin")
        formatOBjectsClass.formatNutritionButtons(dinnerButton,title:"DINNER",fontName:"HelveticaNeue-Thin",size: 25)
        formatOBjectsClass.formatNutritionButtons(createOwnPlanButton,title:"CREATE YOUR OWN PLAN",fontName:"HelveticaNeue-Thin",size: 25)
        formatOBjectsClass.formatNutritionButtons(lunchButton,title:"LUNCH",fontName:"HelveticaNeue-Thin",size: 25)
        formatOBjectsClass.formatNutritionButtons(breakfastButton,title:"BREAKFAST",fontName:"HelveticaNeue-Thin",size: 25)
    }
}
