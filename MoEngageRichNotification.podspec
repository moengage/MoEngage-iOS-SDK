
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     MoEngageRichNotification helps you to make use Notification Service Extensions to support media in notifications(Rich Push Notifications).
                   DESC

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'UserNotifications', 'UserNotificationsUI'

  s.dependency 'MoEngageCore'
  s.dependency 'MoEngageAnalytics'
  s.dependency 'MoEngageMessaging'
  s.dependency 'MoEngageObjCUtils'
end
