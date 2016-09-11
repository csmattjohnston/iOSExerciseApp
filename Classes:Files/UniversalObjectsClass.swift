//
//  UniversalObjectsClass.swift
//  Created by Matthieu on 5/30/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit

class UniversalObjectsClass: NSObject {
    
    func getUniversalFont() -> NSString{
        return "HelveticaNeue-Thin"
    }

    func getBackgroundColor() -> UIColor{
        return UIColor.blueColor()
    }
    
    func getTextColor() -> UIColor{
        return UIColor.yellowColor()
    }
}
