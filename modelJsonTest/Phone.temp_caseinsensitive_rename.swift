//
//  phone.swift
//  modelJsonTest
//
//  Created by Arun kumar Sah on 2/1/17.
//  Copyright © 2017 Arun kumar Sah. All rights reserved.
//

import UIKit
import SwiftyJSON
class Phone: NSObject {
    
    var home = 0
    var mobile = 0
    var office = 0
    
    init(userdata: JSON) {
         self.home   = userdata["home"].intValue
        self.mobile  = userdata["mobile"].intValue
        self.office  = userdata["office"].intValue
    }
    
    required init(coder aDecoder: NSCoder) {
        self.home = Int(aDecoder.decodeInt32(forKey: "home") as Int32)
        self.mobile = Int(aDecoder.decodeInt32(forKey: "mobile") as Int32)
        self.office = Int(aDecoder.decodeInt32(forKey: "office") as Int32)
        
    }
    
    func encodeWithCoder(_ aCoder: NSCoder) {
        aCoder.encode(self.home, forKey: "home")
        aCoder.encode(self.mobile, forKey: "mobile")
        aCoder.encode(self.office, forKey: "office")
    }
    
    internal override var description: String{
        return "home:\(self.home),mobile:\(self.mobile),office:\(self.office)"
    }
    

}





