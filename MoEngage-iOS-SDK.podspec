
Pod::Spec.new do |s|

  s.name         = 'MoEngage-iOS-SDK'
  s.version      = ‘1.5’
  s.summary      = 'MoEngage Mobile Marketing Automation SDK for iOS - iPhone and iPad'
  s.description  = <<-DESC
                   MoEngage is a mobile marketing automation company. This SDK helps you track events, trigger smart notifications and in-apps, provides a drop-in Inbox Controller for notifications.
                   DESC

  s.homepage     = 'http://www.moengage.com'

  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author             = { 'Gautam Jain' => 'gautam@moengage.com' }
  s.platform     = :ios
  s.ios.deployment_target = '7.0'

  s.source       = { :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', :tag => s.version.to_s }

  s.resource = 'MoEngage.bundle'
  s.source_files  = 'Headers/*', 'MoEngage.bundle'

  s.documentation_url = 'http://docs.moengage.com/en/latest/iOS.html'
  s.requires_arc = true
  
  s.preserve_paths = 'libMoEngageSDK.a'
  s.library = 'MoEngageSDK'
  s.ios.vendored_library = 'libMoEngageSDK.a'

  s.frameworks = 'SystemConfiguration', 'AdSupport'
  s.compiler_flags = '-ObjC'

end
