//
//  MOInApp.h
//  MOInApp
//
//  Created by Chengappa C D on 13/06/18.
//  Copyright © 2018 MoEngage. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for MOInApp.
FOUNDATION_EXPORT double MOInAppVersionNumber;

//! Project version string for MOInApp.
FOUNDATION_EXPORT const unsigned char MOInAppVersionString[];


#import <MOInApp/MOInAppCampaign.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark - InApp Protocol
/**
 Confirm to this protocol to get all the inApp campaigns related callbacks
 */
@protocol MOInAppNativDelegate <NSObject>
@optional

/// This method will be called when an inApp Campaign is shown by the SDK
/// @param inappCampaign MOInAppCampaign instance providing the info of the campaign currently being shown
-(void)inAppShownWithCampaignInfo:(MOInAppCampaign*)inappCampaign;

/// This method will be called when a inApp is clicked by the user to perform a navigation action
/// @param inappCampaign MOInAppCampaign instance providing the info of the campaign which is clicked by the user
/// @param navigationAction MOInAppAction instance giving navigation action info along with key-value pairs provided while creating the campaign
-(void)inAppClickedWithCampaignInfo:(MOInAppCampaign*)inappCampaign andNavigationActionInfo:(MOInAppAction*)navigationAction;

/// This method will be called when an inApp Campaign is clicked by the user to perform Custom Action
/// @param inappCampaign MOInAppCampaign instance providing the info of the campaign which is clicked by the user
/// @param customAction MOInAppAction instance giving custom action info along with key-value pairs provided while creating the campaign
-(void)inAppClickedWithCampaignInfo:(MOInAppCampaign*)inappCampaign andCustomActionInfo:(MOInAppAction*)customAction;

/// This method will be called when an inApp is dismissed
/// @param inappCampaign MOInAppCampaign instance providing the info of the campaign which is being dissmissed by the user
-(void)inAppDismissedWithCampaignInfo:(MOInAppCampaign*)inappCampaign;

/// This method will be only be called when a self handled inApp is triggered by an event
/// @param inappCampaign MOInAppSelfHandledCampaign instance with self handled inApp info
-(void)selfHandledInAppTriggeredWithInfo:(MOInAppSelfHandledCampaign*)inappCampaign;

@end

/// NudgePosition Enumerator to show Nudge InApp Campaigns at Top/Bottom position in a screen.
typedef enum{
    NudgePositionTop,
    NudgePositionBottom
}NudgePosition;

/// Completion Block for getting the Nudge InApp Campaign, which is used in case an inApp has to be embedded in your screen.
/// It gives nudge UIView instance and MOInAppCampaign instance giving campaign info.
typedef void(^NudgeCreationCompletionBlock)(UIView * _Nullable nudgeView, MOInAppCampaign* _Nullable campaignInfo);


#pragma mark- InApp Module

/// MOInApp Module for using InApp campaign features in SDK. Make sure MoEngage, MoEngageCore, MOAnalytics and MOMessaging is included in the project for using this module.
@interface MOInApp : NSObject

/// Delegate to get the MOInAppNativDelegate Protocol callbacks.
@property(nonatomic, weak, nullable) id<MOInAppNativDelegate> inAppDelegate;

#pragma mark- Initialize

/// Shared Instance for using InApp module features
+(instancetype)sharedInstance;

/// Making the init method private as this Class has Singleton implementation
-(instancetype _Nonnull)init NS_UNAVAILABLE;

/// Method to initialize the module on App Launch(Internally called by the SDK)
-(void)initializeInAppModule;

#pragma mark- Context Methods

/// Method to set the current inApp contexts, this is so that campaign with contexts will only be shown when the current context contains the campaign context
/// @param contexts Array of contexts
-(void)setCurrentInAppContexts:(NSArray*)contexts;


/// Method to get the current contexts set.
-(NSArray<NSString*>*)getCurrentInAppContexts;

/// Call this methods to invalidate/reset the contexts set currently in the app
-(void)invalidateInAppContexts;

#pragma mark- Show In-App Pop

/// Call this method to show Pop-up OR Fullscreen InApps inside the app.
-(void)showInApp;


/// Call this method to block InApps in a particular ViewController
/// @param viewcontroller ViewController instance where InApps have to be blocked
-(void)blockInAppInViewController:(UIViewController* _Nonnull)viewcontroller;

#pragma mark- Nudge Campaign

/// Method to show Nudge campaign at the specified position
/// @param nudgePosition specifies the position where the nudge has to be showed Top/Bottom.
-(void)showNudgeAtPosition:(NudgePosition)nudgePosition;

/// Method to get the UIView instance of the nudge to embed it anywhere inside the app
/// @param completionBlock Completion Block for getting the Nudge InApp Campaign, which is used in case an inApp has to be embedded in your screen.
/// -- It gives nudge UIView instance and MOInAppCampaign instance giving campaign info.
-(void)getNudgeViewWithCompletionBlock:(NudgeCreationCompletionBlock)completionBlock;


/// Incase Nudge campaign is obtained using getNudgeViewWithCompletionBlock: and embedded by developers in the app, this method has to be called to inform if the nudge is shown successfully to the user.
/// @param campaignInfo MOInAppCampaign instance with the campaign info.
-(void)nudgeCampaignShownWithCampaignInfo:(MOInAppCampaign*)campaignInfo;

#pragma mark- SelfHandled Campaign

/// Method to obtain self-handled inApp Campaign.
/// @param completionBlock Completion Block which provides MOInAppSelfHandledCampaign* instance(campaignInfo), incase one is active and satisfies all the rule checks OR else campaignInfo will be nil.
-(void)getSelfHandledInAppWithCompletionBlock:(void(^)(MOInAppSelfHandledCampaign* _Nullable campaignInfo)) completionBlock;


/// Method to be called if a self-handled InApp is shown inside the app
/// @param campaignInfo MOInAppSelfHandledCampaign instance with the campaign info.
-(void)selfHandledShownWithCampaignInfo:(MOInAppSelfHandledCampaign*)campaignInfo;


/// Method to be called if a self-handled InApp is clicked by the user
/// @param campaignInfo MOInAppSelfHandledCampaign instance with the campaign info.
-(void)selfHandledClickedWithCampaignInfo:(MOInAppSelfHandledCampaign*)campaignInfo;


/// Method to be called if a self-handled InApp's primary action is performed by the user
/// @param campaignInfo MOInAppSelfHandledCampaign instance with the campaign info.
-(void)selfHandledPrimaryClickedWithCampaignInfo:(MOInAppSelfHandledCampaign*)campaignInfo;


/// Method to be called if a self-handled InApp is dismissed by the user
/// @param campaignInfo MOInAppSelfHandledCampaign instance with the campaign info.
-(void)selfHandledDismissedWithCampaignInfo:(MOInAppSelfHandledCampaign*)campaignInfo;

#pragma mark- Disable InApps
/// Method for Opting Out of InApp Feature(Used in case of GDPR opt-out)
/// @param isInAppOptedOut Opt-In Status
-(void)optOutOfInAppCampaign:(BOOL)isInAppOptedOut;

/// Method to disable inApps module
-(void)disableInApps;

@end

NS_ASSUME_NONNULL_END
