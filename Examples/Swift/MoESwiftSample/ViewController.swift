//
//  ViewController.swift
//  SwiftMoEngageIntegration
//
//  Created by Gautam on 26/02/16.
//  Copyright © 2016 MoEngage. All rights reserved.
//

import UIKit
import MoEngage

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    @IBOutlet weak var moeTableView: UITableView!
    let moeActionArr : Array<String> = ["Track Event","Track User Attribute", "Show General InApp", "Show General self-handled InApp", "Inbox Messages", "Cards" , "Initiate Geofences Campaign", "Reset User"]
    
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
        case 2: self.showInApp()
        case 3: self.selfHandledInApp()
        case 4: self.getInboxMessages()
        case 5: self.showCardsUI()
        case 6: self.initiateGeoFences()
        case 7: self.resetUser()
        default:
            print("Wrong Selection")
        }
    }
    
    //MARK:- View Life-cycle methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "MoEngage"
        MOInApp.sharedInstance().inAppDelegate = self
        self.moeTableView.tableFooterView = UIView.init(frame: CGRect.init(origin: CGPoint.zero, size: CGSize.init(width: self.view.frame.width, height: 0.0)))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
    //MARK:- MoEngage Implementation methods
    
    func trackEvents () {
        
        let eventAttrDict = NSMutableDictionary()
        eventAttrDict["Product"] = "iPhone XS Max"
        eventAttrDict["BrandName"] = "Apple"
        eventAttrDict["Items In Stock"] = 109
        
        let eventProperties = MOProperties.init(attributes: eventAttrDict)
        
        eventProperties.addAttribute(87000.00, withName: "price")
        eventProperties.addAttribute("Rupees", withName: "currency")
        eventProperties.addAttribute(true, withName: "in_stock")
        eventProperties.addDateEpochAttribute(1439322197, withName: "Time added to cart")
        eventProperties.addDateISOStringAttribute("2020-02-22T12:37:56Z", withName: "Time of checkout")
        eventProperties.addDateAttribute(Date(), withName: "Time of purchase")
        
        eventProperties.addLocationAttribute(MOGeoLocation.init(latitude: 12.23, andLongitude: 9.23), withName: "Pickup Location")
        MoEngage.sharedInstance().trackEvent("Successful Purchase", with: eventProperties)
    }
    
    func trackUserAttributes () {
        
        //Tracking default user attributes
        MoEngage.sharedInstance().setUserUniqueID("test@moengage.com")
        MoEngage.sharedInstance().setUserEmailID("test@moengage.com")
        MoEngage.sharedInstance().setUserGender(MALE)
        MoEngage.sharedInstance().setUserFirstName("Test")
        MoEngage.sharedInstance().setUserLastName("MoEngage")
        MoEngage.sharedInstance().setUserMobileNo("9879879870")
        MoEngage.sharedInstance().setUserLocationLatitude(12.989, andLongitude: 76.544)
        
        //Track Birthday
        let dateStr = "05 May 1991"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        let birthDate = dateFormatter.date(from: dateStr)
        MoEngage.sharedInstance().setUserDateOfBirth(birthDate)
        
        //Custom User Attributes
        MoEngage.sharedInstance().setUserAttribute("Bengaluru", forKey: "current_city")
        MoEngage.sharedInstance().setUserAttributeTimestamp(Date().timeIntervalSince1970, forKey: "last_home_screen_viewed")
        MoEngage.sharedInstance().setUserAttributeLocationLatitude(12.987, longitude: 72.988, forKey: "pinned_location")
        
        
    }

    
    // To get inbox messages from MoEngage
    func getInboxMessages () {
        if let inboxController = self.storyboard?.instantiateViewController(withIdentifier: "InboxViewController"){
            self.navigationController?.pushViewController(inboxController, animated: true)
        }
    }
    
    // Cards Feature
    func showCardsUI () {
        MOCards.sharedInstance.cardsDelegate = self
        MOCards.sharedInstance.pushCardsViewController(toNavigationController: self.navigationController!)
    }
    
    func showInApp(){
        MOInApp.sharedInstance().show()
    }
    
    func selfHandledInApp() {
        
        MOInApp.sharedInstance().getSelfHandledInApp { (selfHandledCampaign) in
            if let campaign = selfHandledCampaign{
                print("Self Handled campaign shown : %@ with content: \n %@",campaign.campaign_id, campaign.campaignContent)
            }
            else{
                print("Self Handled InApp not returned by SDK. Reasons \n 1. No Active Self Handled InApp(General) \n 2. SDK Rule Checks failed for Active Self Handled InApp(General)")
            }
        }
    }
    
    func initiateGeoFences(){
        MOGeofenceHandler.sharedInstance()?.startGeofenceMonitoring()
    }
    
    func resetUser(){
        print("Logout User")
        MoEngage.sharedInstance().resetUser()
    }
}

extension ViewController : MOInAppNativDelegate{
    // Called when an inApp is shown on the screen
    func inAppShown(withCampaignInfo inappCampaign: MOInAppCampaign) {
        print("InApp Shown with Campaign ID \(inappCampaign.campaign_id)")
    }
    
    // Called when an inApp is dismissed by the user
    func inAppDismissed(withCampaignInfo inappCampaign: MOInAppCampaign) {
         print("InApp Dismissed with Campaign ID \(inappCampaign.campaign_id)")
    }
    
    // Called when an inApp is clicked by the user, and it has been configured with a custom action
    func inAppClicked(withCampaignInfo inappCampaign: MOInAppCampaign, andCustomActionInfo customAction: MOInAppAction) {
        print("InApp Clicked with Campaign ID \(inappCampaign.campaign_id)")
        print("Custom Actions Key Value Pairs: \(customAction.keyValuePairs)")
    }
    
    // Called when an inApp is clicked by the user, and it has been configured with a navigation action
    func inAppClicked(withCampaignInfo inappCampaign: MOInAppCampaign, andNavigationActionInfo navigationAction: MOInAppAction) {
        print("InApp Clicked with Campaign ID \(inappCampaign.campaign_id)")
        print("Navigation Action Screen Name \(navigationAction.screenName) Key Value Pairs: \((navigationAction.keyValuePairs))")
    }

    // This method is called when an event triggers an in-app from the server, which is of type self handled.
    func selfHandledInAppTriggered(withInfo inappCampaign: MOInAppSelfHandledCampaign) {
        print("Self Handled InApp Triggered with info:\nCampaign ID:\(inappCampaign.campaign_id) \nContent: \(inappCampaign.campaignContent)")
    }
}



extension ViewController : MOCardsDelegate{
    
    func cardsSyncedSuccessfully() {
        print("Callback called on successful sync of cards from server")
    }
    
    func cardClicked(withCardInfo card: MOCard, andAction action: MOCardNavigationAction) -> Bool {
        print("Card clicked with ID: \(card.cardID)")
        return true
    }
    
    func cardDeleted(withCardInfo card: MOCard) {
         print("Card deleted with ID: \(card.cardID)")
    }
    
    func cardsViewControllerDismissed() {
        MOCards.sharedInstance.cardsDelegate = nil
        print("Callback called on dismissing the Cards Viewcontroller")
    }

}
