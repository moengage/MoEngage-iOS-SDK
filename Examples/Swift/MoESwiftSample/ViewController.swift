//
//  ViewController.swift
//  SwiftMoEngageIntegration
//
//  Created by Gautam on 26/02/16.
//  Copyright © 2016 MoEngage. All rights reserved.
//

import UIKit
import MoEngageSDK

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    @IBOutlet weak var moeTableView: UITableView!
    let moeActionArr : Array<String> = ["Track Event","Track User Attribute", "Reset User"]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:- Table View Life-cycle methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.moeActionArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID")
        cell?.textLabel?.text = self.moeActionArr[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0: self.trackEvents()
        case 1: self.trackUserAttributes()
        case 2: self.resetUser()
        default:
            print("Wrong Selection")
        }
    }
    
    //MARK:- View Life-cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MoEngage"
        self.moeTableView.tableFooterView = UIView.init(frame: CGRect.init(origin: CGPoint.zero, size: CGSize.init(width: self.view.frame.width, height: 0.0)))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    //MARK:- MoEngage Implementation methods
    
    func trackEvents () {
        MoEngage.enableSDKLogs(true)
        
        var eventAttrDict = Dictionary<String, Any>()
        eventAttrDict["Product"] = "iPhone XS Max"
        eventAttrDict["BrandName"] = "Apple"
        eventAttrDict["Items In Stock"] = 109
        
        let eventProperties = MOProperties(withAttributes: eventAttrDict)
        
        eventProperties.addAttribute(87000.00, withName: "price")
        eventProperties.addAttribute("Rupees", withName: "currency")
        eventProperties.addAttribute(true, withName: "in_stock")
        eventProperties.addDateEpochAttribute(1439322197, withName: "Time added to cart")
        eventProperties.addDateISOStringAttribute("2020-02-22T12:37:56Z", withName: "Time of checkout")
        eventProperties.addDateAttribute(Date(), withName: "Time of purchase")
        
        eventProperties.addLocationAttribute(MOGeoLocation.init(withLatitude: 12.23, andLongitude: 9.23), withName: "Pickup Location")
        eventProperties.setNonInteractive()
        MoEngage.sharedInstance().trackEvent("Successful Purchase", with: eventProperties)
    }
    
    func trackUserAttributes () {
        
        //Tracking default user attributes
        let uniqueID = "test\(Int(Date().timeIntervalSince1970))@moengage.com"
        MoEngage.sharedInstance().setUniqueID(uniqueID)
        MoEngage.sharedInstance().setEmailID(uniqueID)
        MoEngage.sharedInstance().setGender(UserGender.male)
        MoEngage.sharedInstance().setFirstName("Test")
        MoEngage.sharedInstance().setLastName("MoEngage")
        MoEngage.sharedInstance().setMobileNo("9879879870")
        MoEngage.sharedInstance().setLocation(MOGeoLocation(withLatitude: 12.33, andLongitude: 23.33))
        
        //Track Birthday
        let dateStr = "05 May 1991"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        let birthDate = dateFormatter.date(from: dateStr)
        MoEngage.sharedInstance().setDateOfBirth(birthDate)
        
        //Custom User Attributes
        MoEngage.sharedInstance().setUserAttribute("Bengaluru", forKey: "current_city")
        MoEngage.sharedInstance().setUserAttributeEpochTime(Date().timeIntervalSince1970, forKey: "last_home_screen_viewed")
        MoEngage.sharedInstance().setLocation(MOGeoLocation(withLatitude: 12.33, andLongitude: 77.22),forKey: "pinned_location")
    
    }
    
    func resetUser(){
        print("Logout User")
        MoEngage.sharedInstance().resetUser()
    }
}

