//
//  exerciseImages.swift
//
//  Created by Matthieu on 4/6/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class FormatObjects: NSObject {
    
    func formatUITextFields(field:UITextField,font:String,size:CGFloat) -> UITextField{
        let return_field = field
        return_field.textAlignment = .Center
        return_field.font = UIFont (name: font, size: size)
        return return_field
    }
    
    func formatNutritionButtons(button:UIButton,title:String,fontName:String,size:CGFloat) ->UIButton{
        
        let return_btn = button
        return_btn.setTitle(title, forState:.Normal)
        return_btn.setTitle(title, forState:.Highlighted)
        return_btn.layer.cornerRadius = 5
        return_btn.layer.borderWidth = 1
        return_btn.layer.borderColor = UIColor.blackColor().CGColor
        return_btn.titleLabel!.font = UIFont(name:fontName,size:size)
        return return_btn
        
    }
    
    func formatNavigationController(navi:UINavigationController,title:String,fontName:String) -> UINavigationController{
        let return_navi = navi
        return_navi.navigationBar.topItem!.title = title
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        return_navi.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.blueColor()]
        return_navi.navigationBar.titleTextAttributes = [NSFontAttributeName : UIFont(name: fontName, size: 20)!]
        return return_navi
        
    }
    
    func formatCellImage(btn:UIButton,imageToAdd:String) -> UIButton {
        
        let return_btn = btn
        
        return_btn.setImage(UIImage(named: imageToAdd), forState: UIControlState.Normal)
        return_btn.setImage(UIImage(named: imageToAdd), forState: UIControlState.Highlighted)
        return_btn.setImage(UIImage(named: imageToAdd), forState: UIControlState.Focused)
        return_btn.layer.borderWidth = 1.0
        return_btn.layer.masksToBounds = false
        return_btn.layer.borderColor = UIColor.whiteColor().CGColor
        return_btn.layer.cornerRadius = btn.frame.size.width/2
        return_btn.clipsToBounds = true
        
        return return_btn
    }
    
    func formatLargeCellLabels(label:UILabel,label_txt:String,size:CGFloat,fontName:String) -> UILabel{
        let return_label = label
        return_label.text = label_txt
        return_label.font = UIFont(name: fontName,size: size)
        return_label.textAlignment = .Center;
        return_label.textColor = UIColor.blueColor()
        return return_label
    }
    
    func formatCellLabels(label:UILabel,label_txt:String,size:CGFloat,fontName:String) -> UILabel{
        let return_label = label
        return_label.text = label_txt
        return_label.font = UIFont(name: fontName,size: size)
        return_label.textColor = UIColor.blackColor()
        return return_label
    }
    
    func formatCommitmmentLabels(label:UILabel,label_txt:Int,size:CGFloat,fontName:String) -> UILabel{
        let return_label = label
        return_label.text = String(label_txt)
        return_label.font = UIFont(name: fontName,size: size)
        
        if(label_txt <= 10){
            return_label.textColor = UIColor.redColor()
        }else if(label_txt > 10 && label_txt <= 30){
            return_label.textColor = UIColor.orangeColor()
        }else if(label_txt > 30 && label_txt <= 50){
            return_label.textColor = UIColor.yellowColor()
        }
        else if(label_txt > 50 && label_txt <= 70){
            return_label.textColor = UIColor.blueColor()
        }
        else if(label_txt > 70 && label_txt <= 90){
            return_label.textColor = UIColor.cyanColor()
        }else{
            return_label.textColor = UIColor.greenColor()
        }
        return return_label
    }
    
    func formatProfileImageView(view:UIImageView,imageToAdd:String) -> UIImageView{
        let return_view = view
        
        let imgURL = NSURL(string: imageToAdd)
        let imageData = NSData(contentsOfURL: imgURL!)
        return_view.image = UIImage(data: imageData!)
        return_view.layer.borderWidth = 1
        return_view.layer.masksToBounds = false
        return_view.layer.borderColor = UIColor.blackColor().CGColor
        return_view.layer.cornerRadius = return_view.frame.height/2
        return_view.clipsToBounds = true
        return return_view
    }
    

    func formatButtons(button:UIButton,title:String,size:CGFloat,fontName:String,color:UIColor) ->UIButton{
        let return_btn = button
        return_btn.setTitle(title, forState: .Normal)
        return_btn.setTitle(title, forState:.Highlighted)
        return_btn.titleLabel!.font = UIFont(name:fontName,size:size)
        return_btn.setTitleColor(color, forState: .Normal)
        return_btn.setTitleColor(color, forState: .Highlighted)
        return return_btn
    }
    
}
