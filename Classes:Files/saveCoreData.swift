//
//  saveCoreData.swift
//  Created by Matthieu on 5/8/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit
import CoreData

class saveCoreData: NSObject {

        private var moc = DataController().managedObjectContext
    
        func fetchUser(){
            let UserFetch = NSFetchRequest(entityName: "UserInfo")
    
            do{
                let fetchRequest = try self.moc.executeFetchRequest(UserFetch) as! [UserInfo]
                print(fetchRequest.first!.email!)
            } catch let error as NSError {
                // failure
                print("Fetch failed: \(error.localizedDescription)")
            }
            
        }
    
    func saveUser(firstname:String,lastname:String,email:String,age:String,gymName:String,gymAddress:String){
        
        let entity = NSEntityDescription.insertNewObjectForEntityForName("UserInfo", inManagedObjectContext: self.moc) as! UserInfo
        
        entity.setValue(email, forKey: "email")
        entity.setValue(firstname, forKey: "firstName")
        entity.setValue(lastname, forKey: "lastName")
        entity.setValue(age, forKey: "age")
        entity.setValue(gymName, forKey: "gymName")
        entity.setValue(gymAddress, forKey: "gymAddress")
        entity.setValue("6", forKey: "height")
        entity.setValue("155", forKey: "weight")
        entity.setValue("5", forKey: "committment")
        
        do {
            try self.moc.save()
        } catch{
            fatalError("Error saving users data \(error)")
        }}
    
}
