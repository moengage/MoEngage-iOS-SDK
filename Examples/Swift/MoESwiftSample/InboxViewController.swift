//
//  InboxViewController.swift
//  SwiftMoEngageIntegration
//
//  Created by Chengappa C D on 11/04/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

import UIKit
import MoEngage

class InboxViewController: UIViewController, MOInboxCellSelectedDelegate{
    var myInboxController : MOInboxViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myInboxController = MOInbox.initializeInbox(on: self)
        self.myInboxController?.delegate = self;
        
        let rightBarButtonItem = UIBarButtonItem.init(image: #imageLiteral(resourceName: "notification") , style: .plain, target: self, action: #selector(unreadAction))
        self.navigationItem.rightBarButtonItems = [rightBarButtonItem]
        
        self.myInboxController?.customiseInbox(withCellTextColor: UIColor.darkGray, fontForReadMsg: UIFont.systemFont(ofSize: 15.0, weight: .bold), fontForUnreadMsg: UIFont.systemFont(ofSize: 15.0, weight: .regular), dateTextColor:UIColor.lightGray, font: UIFont.systemFont(ofSize: 10.0, weight: .light), cellBackgroundColor: UIColor.clear)
        
        MOInbox.getMessagesWithCompletionBlock { (inboxArr) in
            if let msgs = inboxArr{
                print("Inbox Array :")
                print(msgs)
            }
            else{
                print("No Inbox messages available")
            }
        }
    }
    
    @IBAction func unreadAction() {
        let unreadCounter = MOInbox.getUnreadNotifictionCount()
        print("🔥 Unread Count : \(unreadCounter) 🔥")
        let controller = UIAlertController.init(title: "Inbox", message: "Number of unread notifications : \(unreadCounter)", preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: "OK", style: .default, handler: nil)
        controller.addAction(okAction)
        self.present(controller, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func inboxCellSelected(withData dataDict: [AnyHashable : Any]!) {
        print("Data Dict : \(dataDict)");
    }
    
}
