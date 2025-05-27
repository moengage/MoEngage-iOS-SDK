
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     Real-time device triggers are push notifications that are triggered instantly in the device whenever a trigger event Is tracked with the SDK trackEvent:
                   DESC

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'ImageIO'

  s.dependency 'MoEngageCore'
  s.dependency 'MoEngageMessaging'
  s.dependency 'MoEngageRichNotification'
end
