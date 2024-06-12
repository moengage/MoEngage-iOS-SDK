
Pod::Spec.new do |s|

  s.name         = 'MoEngage-iOS-SDK'
  s.version      = '9.17.5'
  s.summary      = 'MoEngage for iOS'
  s.description  = <<-DESC
                   MoEngage is a mobile marketing automation company. This framework acts like a umbrella framework to include MoEngageCore, MoEngageAnalytics and MoEngageMessaging frameworks.
                   MoEngageCore contains the central configuration of your app and common Utils and modules to be used accross all the MoEngage frameworks. MoEngageAnalytics framework enables you to track required data regarding user and user's activities inside the app to use the same for effective engagement.
                   MoEngageMessaging module will help you support all the features related to push notifications in your App.
                   DESC

  s.homepage     = 'https://www.moengage.com'
  s.documentation_url = 'https://developers.moengage.com'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'MobileDev' => 'mobiledevs@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.ios.deployment_target = '11.0'
  s.tvos.deployment_target = '11.0'

  s.source       = { 
                    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/#{s.version}/MoEngage-iOS-SDK.zip", 
                    :sha256 => 'b3473d23a16ca14eb7cb50e33befd06620a6050471090be7c692ad74ab35496c'
                    }
                    
  s.vendored_frameworks = 'MoEngageSDK.xcframework','MoEngageCore.xcframework', 'MoEngageAnalytics.xcframework', 'MoEngageMessaging.xcframework','MoEngageObjCUtils.xcframework', 'MoEngageSecurity.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'SystemConfiguration' , 'Security'
  s.weak_framework = 'AdSupport', 'UserNotifications', 'AppTrackingTransparency'
end
