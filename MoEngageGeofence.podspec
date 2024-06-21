
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '5.16.2'
  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     MoEngageGeofence framework helps you to trigger notifications based on the exit/entry of geofences.
                     This framework makes use of the Region Monitoring service of CoreLocation to achieve the same.
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => '502768c5c8863fd127c80d1d6bde93276566c65aab2a3cc1f739e168ef41cf47'
  }   

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'CoreLocation'
end
