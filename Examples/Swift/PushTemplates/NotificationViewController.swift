//
//  NotificationViewController.swift
//  PushTemplates
//
//  Created by Chengappa C D on 08/09/20.
//  Copyright © 2020 MoEngage. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI
  
class NotificationViewController: UIViewController, UNNotificationContentExtension {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set App Group ID
    }
  
    
    func didReceive(_ notification: UNNotification) {
        // Method to add template to UI
    }

}
