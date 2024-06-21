
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '2.16.1'
  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     Real-time device triggers are push notifications that are triggered instantly in the device whenever a trigger event Is tracked with the SDK trackEvent:
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => 'c9133b28b19e10fe0e38414a45e0953e888149d233b8fbfff06569fd261f0923'
  }   

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'ImageIO'
end
