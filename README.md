![Logo](https://user-images.githubusercontent.com/15011722/32040752-7237c3c2-ba4f-11e7-9d68-a019049fccf5.png)
# MoEngage-iOS-SDK

[![Version](https://img.shields.io/cocoapods/v/MoEngage-iOS-SDK.svg?style=flat)](http://cocoapods.org/pods/MoEngage-iOS-SDK)
[![License](https://img.shields.io/cocoapods/l/MoEngage-iOS-SDK.svg?style=flat)](http://cocoapods.org/pods/MoEngage-iOS-SDK)
[![CocoaPods](https://img.shields.io/cocoapods/dm/MoEngage-iOS-SDK.svg)](https://cocoapods.org/pods/MoEngage-iOS-SDK)

MoEngage provides a platform which enables companies to deliver personalized interactions to their users through push notifications, in-app campaigns, email campaigns and other re-targeting channels.

## Integration

There are two ways you can integrate the SDK - CocoaPods or Manual integration.

### Integration through CocoaPods
CocoaPods is a dependency manager for Objective C & Swift projects and makes integration easier.

1. If you don't have CocoaPods installed, you can do it by executing the following line in your terminal.

    ```sudo gem install cocoapods```
    
2. If you don't have a Podfile, create a plain text file named Podfile in the Xcode project directory with the following content, making sure to set the platform and version that matches your app.

    ```pod 'MoEngage-iOS-SDK'```
    
3. Install MoEngage SDK by executing the following in the Xcode project directory.

    ```pod install```
    
4. Now, open your project workspace and check if MoEngage SDK is properly added.
    
### Manual Integration

To install manually, follow the steps below:

1. Download the latest sdk from the following [link](https://drive.google.com/a/moengage.com/folderview?id=0B0gKRBBr6rFHb0pzYnhrVTh3NHc&usp=drive_web#list).

2. Add the given library file (.a extension) from **MoEngageSDK** folder to your project.

3. Add the given header files (.h extensions) from **MoEngageSDK** folder, by dragging and dropping the files in to your project.

4. Add the following compiler flag: -ObjC. Select your project. Go to “Build Settings” ->”Linker” ->”Other Linker Flags” and add this flag.

### Using SDK in Swift

If you are not using dynamic frameworks:
Simply add the `MoEngage/MoEngage.h`  in your bridging header and you will be good to go.

    #import <MoEngage/MoEngage.h>


If you are using dynamic frameworks:

Here you will have to import the SDK by directly using an import statement as below:

    import MoEngage


## SDK Initialization

Login to your MoEngage account, go to **Settings** in the left panel of the dashboard. Under App Settings, you will find your **APP ID**. Provide this APP ID while initializing the SDK with **initializeDevWithApiKey:** and **initializeProdWithApiKey:** methods as shown below.

### In Objective-C:

    - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

        // Separate initialization methods for Dev and Prod initializations
        // openDeeplinkUrlAutomatically tells us whether you want the SDK to call handleOpenUrl for deeplinks specified while creating a campaign
    
        #ifdef DEBUG
            [[MoEngage sharedInstance] initializeDevWithApiKey:@"Your APP ID" inApplication:application withLaunchOptions:launchOption  openDeeplinkUrlAutomatically:YES];
        #else
            [[MoEngage sharedInstance] initializeProdWithApiKey:@"Your APP ID" inApplication:application withLaunchOptions:launchOption openDeeplinkUrlAutomatically:YES];
        #endif
        
        //Rest of the implementation of method
        //-------
    }

### In Swift:

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:     [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
        // Separate initialization methods for Dev and Prod initializations
        // openDeeplinkUrlAutomatically tells us whether you want the SDK to call handleOpenUrl for deeplinks specified while creating a campaign

        #if DEBUG
            MoEngage.sharedInstance().initializeDev(withApiKey: "Your APP ID", in: application, withLaunchOptions: launchOptions, openDeeplinkUrlAutomatically: true)
        #else
            MoEngage.sharedInstance().initializeProd(withApiKey: "Your APP ID", in: application, withLaunchOptions: launchOptions, openDeeplinkUrlAutomatically: true)
        #endif
        
        //Rest of the implementation of method
        //-------
    }

Thats it!! SDK is successfully integrated and initialized in the project, and ready to use. 

## Developer Docs
Please refer to our developer docs to know how to make use of our SDK to track Events and User Attributes, to implement Push Notification and InApps: https://docs.moengage.com/docs/sdk-integration.

## Change Log
See [SDK Change Log](https://github.com/moengage/MoEngage-iOS-SDK/blob/master/CHANGELOG.md) for information on every released version.

## Support
Please visit this repository's [Github issue tracker](https://github.com/moengage/MoEngage-iOS-SDK/issues) for bug reports specific to our iOS SDK.
For other issues and support please contact MoEngage support from your dashboard.
