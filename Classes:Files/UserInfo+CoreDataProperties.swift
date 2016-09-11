//
//  UserInfo+CoreDataProperties.swift
//  
//
//  Created by Matthieu on 5/7/16.
//
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension UserInfo {

    @NSManaged var age: String?
    @NSManaged var committment: String?
    @NSManaged var email: String?
    @NSManaged var firstName: String?
    @NSManaged var gymAddress: String?
    @NSManaged var gymName: String?
    @NSManaged var height: String?
    @NSManaged var lastName: String?
    @NSManaged var weight: String?

}
