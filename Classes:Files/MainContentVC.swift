//
//  PageContentVC.swift
//  Created by Matthieu on 5/27/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class MainContentVC: UIViewController {
    
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    var pageIndex:Int!
    var mainTitle:String!
    var subTitle:String!
    
    //Classes
    let formatObjClass = FormatTutorialObjects()
    let universalClass = UniversalObjectsClass()
    let formatClass = FormatObjects()
    let sb = UIStoryboard(name: "Main", bundle: nil)
    
    @IBOutlet weak var navigationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.mainTitleLabel = self.formatObjClass.formatLabels(mainTitleLabel, label_txt: mainTitle, size: 40, fontName: universalClass.getUniversalFont() as String,color:UIColor.blueColor())
        
        self.subTitleLabel = self.formatObjClass.formatLabels(subTitleLabel, label_txt: subTitle, size: 25, fontName: universalClass.getUniversalFont() as String,color:UIColor.whiteColor())
        
        //set gradient view
        gradientView = formatObjClass.formatGradientView(self.gradientView, color: UIColor.blueColor())
        
        //set objects hidden to true
        subTitleLabel.hidden = false
        self.navigationButton.hidden = true
        //Set navigation button
        if(pageIndex == 6){
            self.navigationButton.hidden = false
            self.gradientView.hidden = true
            subTitleLabel.hidden = true
            self.navigationButton = self.formatClass.formatButtons(self.navigationButton,title:"Get Started",size:30,fontName:universalClass.getUniversalFont() as String,color:UIColor.blueColor())
            self.navigationButton.addTarget(self, action: #selector(naviButtonTapped),
                                            forControlEvents: .TouchUpInside)
        }
        
    }
    
    func naviButtonTapped() {
        let controller = self.sb.instantiateViewControllerWithIdentifier("mainPageVC") as UIViewController
        self.presentViewController(controller, animated: true, completion: nil)
    }
}

