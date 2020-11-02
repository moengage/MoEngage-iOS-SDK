Pod::Spec.new do |s|

  s.name         = 'MoEngageInApp'
  s.version      = '1.0.2'
  s.summary      = 'MoEngage InApp Campaigns for iOS'
  s.description  = <<-DESC
                   InApp Messaging are custom views which you can send to a segment of users to show custom messages or give new offers or take to some specific pages. They can be created from your MoEngage dashboard and MOInApp framework enables you to show those InApp campaigns in your iOS Apps.
                   DESC

  s.homepage     = 'https://www.moengage.com'
  s.documentation_url = 'https://docs.moengage.com/docs/in-app-nativ'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Chengappa C D' => 'chengappa@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '9.0'

  s.source       = { 
    :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', 
    :tag => 'inapp-' + s.version.to_s 
  }

  s.ios.vendored_frameworks = 'Frameworks/MOInApp.framework'
  s.preserve_paths = 'Frameworks/MOInApp.framework'
  s.module_map = 'Frameworks/MOInApp.framework/Modules/module.modulemap'

  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
  s.dependency 'MoEngage-iOS-SDK', '~> 6.0'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
