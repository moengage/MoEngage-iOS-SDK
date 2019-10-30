Pod::Spec.new do |s|
  s.name             = 'MORichNotification'
  s.version          = '3.0.2'
  s.summary          = 'MORichNotification is part of the MoEngage SDK which handles Notification Service Extensions from iOS10.'

  s.description  = <<-DESC
                   MoEngage is a mobile marketing automation company. MORichNotification helps you to handle Notification Service Extensions provided by Apple from iOS10. It download's the attachment for the notification and adds it to Notification content.
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
  	:tag => 'MORichNotification-' + s.version.to_s 
  }


  s.ios.vendored_frameworks = 'MORichNotification/MORichNotification.framework'
  s.preserve_paths = 'MORichNotification/MORichNotification.framework'
  s.module_map = 'MORichNotification/MORichNotification.framework/Modules/module.modulemap'

  s.requires_arc = true
  s.frameworks = 'UserNotifications'
end