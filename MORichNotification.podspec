Pod::Spec.new do |s|
  s.name             = 'MORichNotification'
  s.version          = '3.1.1'
  s.summary          = 'MoEngage Rich Notifications for iOS.'

  s.description  = <<-DESC
                   MORichNotification helps you to make use Notification Service Extensions to support media in notifications(Rich Push Notifications). This feature is available from iOS version 10.0 and above. 
                   DESC

  s.homepage     = 'http://www.moengage.com'
  s.documentation_url = 'http://docs.moengage.com'
  s.social_media_url   = 'https://twitter.com/moengage'

  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Chengappa C D' => 'chengappa@moengage.com' }
  s.platform     = :ios
  s.ios.deployment_target = '10.0'
  s.source           = { 
  	:git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', 
  	:tag => 'richPush-' + s.version.to_s 
  }


  s.ios.vendored_frameworks = 'Frameworks/MoEngageRichNotification/MORichNotification.framework'
  s.preserve_paths = 'Frameworks/MoEngageRichNotification/MORichNotification.framework'
  s.module_map = 'Frameworks/MoEngageRichNotification/MORichNotification.framework/Modules/module.modulemap'

  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'UserNotifications'
end