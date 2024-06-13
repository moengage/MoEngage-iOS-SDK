
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '7.16.1'
  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     MoEngageRichNotification helps you to make use Notification Service Extensions to support media in notifications(Rich Push Notifications).
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => 'b4c500d73880e604f3e6af820046d91a96cf7ad9bf578190bfb1103827c54982'
  }   

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'UserNotifications', 'UserNotificationsUI'
end
