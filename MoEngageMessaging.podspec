
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageMessaging module will help you support all the features related to push notifications in your App.
                   DESC

  s.addDirectUseWarning
  s.tvos.deployment_target = '11.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit'
  s.weak_framework = 'UserNotifications'

  s.dependency 'MoEngageCore'
  s.dependency 'MoEngageAnalytics'
  s.dependency 'MoEngageObjCUtils'
end
