//
//  FirstModel.swift
//  modelJsonTest
//
//  Created by Arun kumar Sah on 2/1/17.
//  Copyright © 2017 Arun kumar Sah. All rights reserved.
//
import SwiftyJSON
import UIKit

class FirstModel: NSObject {
    
    var id          = ""
    var address     = ""
    var email       = ""
    var gender      = ""
    var name        = ""
    var phone1       = [phone?]()
    
    
    init(userData1: JSON) {
        self.id         = userData1["id"].stringValue
        self.address    = userData1["adress"].stringValue
        self.email      = userData1["email"].stringValue
        self.gender     = userData1["gender"].stringValue
        self.name       = userData1["name"].stringValue
        
    }
    
    required init(coder aDecoder : NSCoder) {
        self.id   =  aDecoder.decodeObject(forKey: "id") as! String
        self.address = aDecoder.decodeObject(forKey: "adress") as! String
        self.email   = aDecoder.decodeObject(forKey: "email") as! String
        self.gender  = aDecoder.decodeObject(forKey: "email") as! String
        self.name    = aDecoder.decodeObject(forKey: "name") as! String
        
    }
    
    func encodeWithCoder(_ aCoder: NSCoder) {
        aCoder.encode(self.id, forKey: "id")
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.address, forKey: "adress")
        aCoder.encode(self.gender, forKey: "gender")
        aCoder.encode(self.email, forKey: "email")
        
    }
    
    internal override var description: String{
        
        return "id:\(self.id),name:\(self.name),adress:\(self.address),gender:\(self.gender),email:\(email)"
        
    }
    
    
    
    

}





