//
//  exercisesVC.swift
//  Gym Buddy
//
//  Created by Matthieu on 1/21/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class exercisesVC: UIViewController{
    
    
    @IBOutlet var menuButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    
}
