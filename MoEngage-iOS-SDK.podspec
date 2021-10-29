
Pod::Spec.new do |s|

  s.name         = 'MoEngage-iOS-SDK'
  s.version      = '7.1.2'
  s.summary      = 'MoEngage for iOS'
  s.description  = <<-DESC
                   MoEngage is a mobile marketing automation company. This framework acts like a umbrella framework to include MoEngageCore, MOAnalytics and MOMessaging frameworks.
                   MoEngageCore contains the central configuration of your app and common Utils and modules to be used accross all the MoEngage frameworks.
                   MOAnalytics framework enables you to track required data regarding user and user's activities inside the app to use the same for effective engagement. 
                   MOMessaging module will help you support all the features related to push notifications in your App.
                   DESC

  s.homepage     = 'https://www.moengage.com'
  s.documentation_url = 'http://docs.moengage.com'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Chengappa C D' => 'chengappa@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '10.0'

  s.source       = { 
                    :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', 
                    :tag => 'moengage-' + s.version.to_s 
                    }
                    
  s.ios.vendored_frameworks = 'Frameworks/MoEngage.xcframework','Frameworks/MoEngageCore.xcframework', 'Frameworks/MOAnalytics.xcframework', 'Frameworks/MOMessaging.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'SystemConfiguration' , 'Security'
  s.weak_framework = 'AdSupport', 'UserNotifications', 'AppTrackingTransparency'
  s.dependency 'MORichNotification', '>= 5.2.0', '< 5.3.0'
end
