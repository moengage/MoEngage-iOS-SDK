# SwiftMoEngageIntegration
This is a sample Xcode project to help you guys in integrating MoEngage SDK to your Swift project. We have covered following in this sample project:

## Integrating SDK:
If facing any issues in installing MoEngage-iOS-SDK pod in your project, please refer to the Podfile in the sample project to correct if anything is missing. For more info refer: https://docs.moengage.com/docs/sdk-integration

## Initializing SDK:
Here in the AppDelegate file you will observe we have called the initialize methods but you will have to replace "Your App ID" text with MoEngage App ID of your App. For more info refer this [link](https://docs.moengage.com/docs/appdelegate-changes).

    var yourMoEAppID = "Your App ID"  //replace "Your App ID" string with MoEngage App ID of your App

## INSTALL/UPDATE Differentition:
An example is provided to differentiate between INSTALL/UPDATE in app delegate file. For more info refer this [link](https://docs.moengage.com/docs/installupdate-differentiation).

## Tracking Events and User Attributes
An example on how to [track events](https://docs.moengage.com/docs/tracking-events) using MoEngage SDK and also [setting user attributes](https://docs.moengage.com/docs/tracking-user-attributes).

## InApp Campaigns
In-App Messaging are custom views which you can send to a segment of users to show custom messages or give new offers or take to some specific pages. They can be created from your MoEngage account. In this example we have shown how to show inApps in the app and handling of the callbacks on InApp shown and actions. For more info refer this [link](https://docs.moengage.com/docs/in-app-nativ).

## GeoFence Campaigns and Inbox Feature
We have shown in the example how to enable SDK to get the GeoFences created from our dashboard. Refer [link](https://docs.moengage.com/docs/geofences) for more info.
Inbox is a drop in view controller which contains the read and unread push notifications. In the example we have shown how to get the list of notifications received by the user.Refer [link](https://docs.moengage.com/docs/ios-notification-center) for more info.

## Making use of MORichNotification
For supporting iOS10 Rich Notification feature please add MORichNotification to your Notification Service extension as shown in this project. For more info refer this [link](https://docs.moengage.com/docs/ios-10-rich-notifications).
