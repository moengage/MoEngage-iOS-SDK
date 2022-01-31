Pod::Spec.new do |s|

  s.name         = 'MOGeofence'
  s.version      = '3.2.0'
  s.summary      = 'MoEngage SDK for Geofence based campaigns in iOS'
  s.description  = <<-DESC
                   MOGeofence framework helps you to trigger notifications based on the exit/entry of geofences. This framework makes use of the Region Monitoring service of CoreLocation to achieve the same.
                   DESC

  s.homepage     = 'https://www.moengage.com'
  s.documentation_url = 'https://developers.moengage.com'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Chengappa C D' => 'chengappa@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '10.0'

  s.source       = { 
    :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', 
    :tag => 'geofence-' + s.version.to_s 
  }

  s.ios.vendored_frameworks = 'Frameworks/MOGeofence.xcframework'
  s.requires_arc = true
  s.frameworks = 'Foundation', 'UIKit', 'CoreLocation'
  s.dependency 'MoEngage-iOS-SDK', '>= 7.2.0', '< 7.3.0'
end
