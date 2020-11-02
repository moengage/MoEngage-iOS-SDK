
Pod::Spec.new do |s|

  s.name         = 'MoEngageCards'
  s.version      = '1.0.1'
  s.summary      = 'MoEngage Cards Campaigns for iOS'
  s.description  = <<-DESC
                   Create targeted or automated App Inbox/NewsFeed messages that can be grouped into various categories, and target your users with different updates or offers that can stay in the Inbox/Feed over a designated period of time.
                   DESC

  s.homepage     = 'https://www.moengage.com'
  s.documentation_url = 'https://docs.moengage.com/docs/ios-cards'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Chengappa C D' => 'chengappa@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '9.0'

  s.source       = { 
                    :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', 
                    :tag => 'cards-' + s.version.to_s 
                    }
                    
  s.ios.vendored_frameworks = 'Frameworks/MOCards.framework'
  s.preserve_paths = 'Frameworks/MOCards.framework'
  s.module_map = 'Frameworks/MOCards.framework/Modules/module.modulemap'

  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'ImageIO'
  s.dependency 'MoEngage-iOS-SDK', '~> 6.1'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
