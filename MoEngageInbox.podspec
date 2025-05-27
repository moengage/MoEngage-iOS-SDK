
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     MoEngageInbox is a drop-in view controller which contains the read and unread push notifications.
                   DESC

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'ImageIO'

  s.dependency 'MoEngageCore'
  s.dependency 'MoEngageMessaging'
end
