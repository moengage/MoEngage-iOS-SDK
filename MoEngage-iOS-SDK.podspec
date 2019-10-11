
Pod::Spec.new do |s|

  s.name         = 'MoEngage-iOS-SDK'
  s.version      = '5.2.0'
  s.summary      = 'MoEngage Mobile Marketing Automation SDK for iOS - iPhone and iPad'
  s.description  = <<-DESC
                   MoEngage is a mobile marketing automation company. This framework helps you track events, trigger smart notifications and in-apps, provides a drop-in Inbox Controller for notifications.
                   DESC

  s.homepage     = 'http://www.moengage.com'
  s.documentation_url = 'http://docs.moengage.com'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Chengappa C D' => 'chengappa@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source       = { 
                    :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', 
                    :tag => 'Core-' + s.version.to_s 
                    }
                    
  s.ios.vendored_frameworks = 'MoEngage/MoEngage.framework'
  s.preserve_paths = 'MoEngage/MoEngage.framework'
  s.module_map = 'MoEngage/MoEngage.framework/Modules/module.modulemap'

  s.requires_arc = true
  s.frameworks = 'SystemConfiguration' , 'Security', 'MobileCoreServices'
  s.weak_framework = 'AdSupport', 'UserNotifications'
end
