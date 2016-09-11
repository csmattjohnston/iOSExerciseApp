//
//  FormatTutorialObjects.swift
//  Created by Matthieu on 5/30/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class FormatTutorialObjects: NSObject {

    func formatLabels(label:UILabel,label_txt:String,size:CGFloat,fontName:String,color:UIColor) -> UILabel{
        let return_label = label
        return_label.text = label_txt
        return_label.font = UIFont(name: fontName,size: size)
        return_label.textAlignment = .Center;
        return_label.textColor = color
        return_label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        return_label.numberOfLines = 3
        return return_label
    }

    func formatGradientView(view:UIView,color:UIColor) ->UIView{
        
        let return_view = view
        return_view.backgroundColor = color
        return return_view
    }
}
