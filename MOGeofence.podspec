Pod::Spec.new do |s|

  s.name         = 'MOGeofence'
  s.version      = '1.0.0'
  s.summary      = 'MoEngage Mobile Marketing Automation SDK for Geofence based campaigns'
  s.description  = <<-DESC
                   MoEngage is a mobile marketing automation company. This framework helps you in using Geofence based push campaigns.
                   DESC

  s.homepage     = 'http://www.moengage.com'
  s.documentation_url = 'https://docs.moengage.com/docs/geofences'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'Chengappa C D' => 'chengappa@moengage.com' }
  s.social_media_url   = 'https://twitter.com/moengage'
  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source       = { 
    :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git', 
    :tag => 'Geofence-' + s.version.to_s 
  }

  s.ios.vendored_frameworks = 'MOGeofence/MOGeofence.framework'
  s.preserve_paths = 'MOGeofence/MOGeofence.framework'
  s.module_map = 'MOGeofence/MOGeofence.framework/Modules/module.modulemap'

  s.requires_arc = true
  s.frameworks = 'CoreLocation'
  s.dependency 'MoEngage-iOS-SDK', '~> 4.3.0'
end
