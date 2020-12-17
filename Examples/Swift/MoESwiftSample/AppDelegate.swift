//
//  AppDelegate.swift
//  SwiftMoEngageIntegration
//
//  Created by Gautam on 26/02/16.
//  Copyright © 2016 MoEngage. All rights reserved.
//

import UIKit
import MoEngage
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate, MOMessagingDelegate{

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        //TODO: Add your App Group ID
        MoEngage.setAppGroupID("Your App Group ID")
        
        MOMessaging.sharedInstance().messagingDelegate = self
        
        //This is to enable logs of MoEngage SDK
        //MoEngage.debug(LOG_ALL)
        
        //TODO: Add your MoEngage App ID
        var yourMoEAppID = "Your App ID"
        MoEngage.debug(LOG_ALL)
        DispatchQueue.main.async {
            #if DEBUG
            MoEngage.sharedInstance().initializeDev(withAppID:yourMoEAppID , withLaunchOptions: launchOptions)
            #else
            MoEngage.sharedInstance().initializeProd(withAppID:yourMoEAppID, withLaunchOptions: launchOptions)
            #endif
        }
        
        //For registering for remote notification
        if #available(iOS 10.0, *) {
            let categoriesForiOS10 = self.getCategoriesForiOS10()
            MoEngage.sharedInstance().registerForRemoteNotification(withCategories: categoriesForiOS10, withUserNotificationCenterDelegate: self)
        } else {
            let categoriesForBelowiOS10 = self.getCategoriesForEarlierVersions()
            MoEngage.sharedInstance().registerForRemoteNotificationForBelowiOS10(withCategories: categoriesForBelowiOS10)
        }
        
        //For tracking if it's a new install or on update by user
        self.sendAppStatusToMoEngage()
        self.saveAppVersionToDefaults()
        return true
    }
    
    //Example to define categories
    //This method gives categories for iOS version 10.0 and above
    @available(iOS 10.0, *)
    func getCategoriesForiOS10() -> Set<UNNotificationCategory>{
        
        let acceptAction = UNNotificationAction.init(identifier: "ACCEPT_IDENTIFIER", title: "Accept", options: .authenticationRequired)
        let declineAction = UNNotificationAction.init(identifier: "DECLINE_IDENTIFIER", title: "Decline", options: .destructive)
        let maybeAction = UNNotificationAction.init(identifier: "MAYBE_IDENTIFIER", title: "May Be", options: .foreground)
        
        let inviteCategory = UNNotificationCategory.init(identifier: "INVITE_CATEGORY", actions: [acceptAction,declineAction,maybeAction], intentIdentifiers: [], options: .customDismissAction)
        let categoriesSet = Set.init([inviteCategory])
        
        return categoriesSet;
    }
    
    
    //This method gives categories for iOS version below 10.0
    func getCategoriesForEarlierVersions() -> Set<MONotificationCategory>{
        let acceptAction = UIMutableUserNotificationAction.init()
        acceptAction.identifier = "ACCEPT_IDENTIFIER"
        acceptAction.title = "Accept"
        acceptAction.activationMode = .background
        acceptAction.isDestructive = false
        acceptAction.isAuthenticationRequired = false
        
        let declineAction = UIMutableUserNotificationAction.init()
        declineAction.identifier = "DECLINE_IDENTIFIER"
        declineAction.title = "Decline"
        declineAction.activationMode = .background
        declineAction.isDestructive = true
        declineAction.isAuthenticationRequired = false
        
        let maybeAction = UIMutableUserNotificationAction.init()
        maybeAction.identifier = "MAYBE_IDENTIFIER"
        maybeAction.title = "May Be"
        maybeAction.activationMode = .background
        maybeAction.isDestructive = false
        maybeAction.isAuthenticationRequired = false
        
        let inviteCategory = MONotificationCategory.init()
        inviteCategory.identifier = "INVITE_CATEGORY"
        inviteCategory.setActions([maybeAction,declineAction,acceptAction], for: .default)
        inviteCategory.setActions([declineAction,acceptAction], for: .minimal)
        
        let categoriesSet = Set.init([inviteCategory])
        return categoriesSet;
    }

    //MARK:- Push Notification delegate Method
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        MoEngage.sharedInstance().setPushToken(deviceToken)
    }
    
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        MoEngage.sharedInstance().userNotificationCenter(center, didReceive: response)
        completionHandler()
    }
    
    @available(iOS 10.0, *)
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert , .sound])
    }
    
    // MARK: For Below iOS 10.0
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) {
        if (Double(UIDevice.current.systemVersion)! < 10.0 ){
            MoEngage.sharedInstance().didReceieveNotificationinApplication(application, withInfo: userInfo)
        }
        
    }
    
    func application(_ application: UIApplication, didReceive notification: UILocalNotification) {
        if let userInfo = notification.userInfo  {
            MoEngage.sharedInstance().didReceieveNotificationinApplication(application, withInfo: userInfo)
        }
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        MoEngage.sharedInstance().didReceieveNotificationinApplication(application, withInfo: userInfo)
        completionHandler(.newData)
    }
    
    func application(_ application: UIApplication, handleActionWithIdentifier identifier: String?, forRemoteNotification userInfo: [AnyHashable : Any], completionHandler: @escaping () -> Void) {
        if let identifier = identifier {
            MoEngage.sharedInstance().handleAction(withIdentifier: identifier, forRemoteNotification: userInfo)
        }
    }
        
    // MARK:- Send app status to MoEngage
    func sendAppStatusToMoEngage () {
        if((UserDefaults.standard.object(forKey: "app version") == nil)){
            MoEngage.sharedInstance().appStatus(INSTALL)
            return
        }
        
        if(self.getAppVersion().floatValue > (UserDefaults.standard.object(forKey: "app version") as AnyObject).floatValue){
            MoEngage.sharedInstance().appStatus(UPDATE)
        }
    }
    
    func saveAppVersionToDefaults () {
        UserDefaults.standard.set(self.getAppVersion(), forKey: "app version")
    }
    
    func getAppVersion () -> AnyObject {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString")! as AnyObject
    }
    
    func notificationClicked(withScreenName screenName: String?, andKVPairs kvPairs: [AnyHashable : Any]?) {
        if let screenName = screenName {
            print("Navigate to Screen:\(screenName)")
        }
        
        if let actionKVPairs = kvPairs {
            print("Selected Action KVPair:\(actionKVPairs)")
        }
    }
    
    func notificationClicked(withScreenName screenName: String?, kvPairs: [AnyHashable : Any]?, andPushPayload userInfo: [AnyHashable : Any]) {
        
        print("Push Payload: \(userInfo)")
        
        if let screenName = screenName {
            print("Navigate to Screen:\(screenName)")
        }
        
        if let actionKVPairs = kvPairs {
            print("Selected Action KVPair:\(actionKVPairs)")
        }
    }
}

