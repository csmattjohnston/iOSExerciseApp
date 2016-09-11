//
//  user.swift
//  Created by Matthieu on 5/8/16.
//  Copyright © 2016 Sir. All rights reserved.
//

import UIKit
import CoreLocation

class User: NSObject,CLLocationManagerDelegate {
    
    private var firstname = ""
    private var email = ""
    private var lastname = ""
    private var weight = ""
    private var height = ""
    private var age = ""
    private var gymName = ""
    private var gymAddress = ""
    private var userLocation = CLLocationCoordinate2D()
    
    
//    init(firstname:String,lastname:String,email:String,age:String,gymName:String,gymAddress:String,weight:String,height:String){
//        self.firstname = firstname
//        self.lastname = lastname
//        self.email = email
//        self.age = age
//        self.gymName = gymName
//        self.gymAddress = gymAddress
//        self.weight = weight
//        self.height = height
//    }
    
    //Setters
    func setFirstName(firstname:String){
        self.firstname = firstname
    }
    func setLastName(lastname:String){
        self.lastname = lastname
    }
    func setEmail(email:String){
        self.email = email
    }
    func setAge(age:String){
        self.age = age
    }
    func setGymName(gymName:String){
        self.gymName = gymName
    }
    func setGymAddress(gymAddress:String){
        self.gymAddress = gymAddress
    }
    func setUserLocation(userLocation:CLLocationCoordinate2D){
        self.userLocation = userLocation
    }
    
    //Getters
    func getFirstName() -> NSString{
        return firstname
    }
    func getLastName() -> NSString{
        return lastname
    }
    func getEmail() -> NSString{
        return email
    }
    func getAge() -> NSString{
        return age
    }
    func getGymName() -> NSString{
        return gymName
    }
    func getGymAddress() -> NSString{
        return gymAddress
    }
    func getUserLocation() -> CLLocationCoordinate2D{
        return userLocation
    }
    
}
