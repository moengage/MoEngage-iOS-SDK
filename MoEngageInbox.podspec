
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '2.16.2'
  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     MoEngageInbox is a drop-in view controller which contains the read and unread push notifications.
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => '1ec708f1b14a20239abf0462960b88ea8ae9fc1906e3494704f1111be7026a89'
  }   

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'ImageIO'
end
