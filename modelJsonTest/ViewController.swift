//
//  ViewController.swift
//  modelJsonTest
//
//  Copyright © 2017 Arun kumar Sah. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire


class ViewController: UIViewController {
    
    var contactdictionary = [String:String]()
    var phoneDictionary = [String:String]()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        Jsondata()
        //print(contactdictionary)
        
        //print(phoneDictionary)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func Jsondata() {
        Alamofire.request("http://api.androidhive.info/contacts/").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                   let JsonWebdata = JSON(responseData.result.value!)
                      let contacts = JsonWebdata["contacts"]
                                for i in 0..<contacts.count{
                                    //self.contactdictionary.removeAll()
                                    let id = contacts[i]["id"]
                                        self.contactdictionary.updateValue(String(describing: id), forKey: "id")
                                    let name = contacts[i]["name"]
                                        self.contactdictionary.updateValue(String(describing: name), forKey: "name")
                
                                    let email = contacts[i]["email"]
                                        self.contactdictionary.updateValue(String(describing: email), forKey: "email")
                    
                                  let gender = contacts[i]["gender"]
                                        self.contactdictionary.updateValue(String(describing: gender), forKey: "gender")
                                   let adress = contacts[i]["address"]
                                         self.contactdictionary.updateValue(String(describing: adress), forKey: "adress")
                  
                                    
                    
                    let phone = contacts[i]["phone"]
                                    let mobile = phone["mobile"]
                                        self.phoneDictionary.updateValue(String(describing: mobile), forKey: "mobile")
                                    let home = phone["home"]
                                        self.phoneDictionary.updateValue(String(describing: home), forKey: "home")
                                    let office = phone["office"]
                                    self.phoneDictionary.updateValue(String(describing: office), forKey: "office")
                                    
                                    
                                    
                   // print(phone)
                    print(self.contactdictionary)
                    print(self.phoneDictionary)
                    
                }
                
        
                
                
                  }
             }
    }


}



