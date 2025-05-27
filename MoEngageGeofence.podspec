
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     MoEngageGeofence framework helps you to trigger notifications based on the exit/entry of geofences.
                     This framework makes use of the Region Monitoring service of CoreLocation to achieve the same.
                   DESC

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'CoreLocation'

  s.dependency 'MoEngageCore'
end
