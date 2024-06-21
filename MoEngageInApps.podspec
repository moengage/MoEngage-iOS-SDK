
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '6.00.3'
  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     MoEngageInApps Messaging are custom views which you can send to a segment of users to show custom messages or give new offers or take to some specific pages.
                     They can be created from your MoEngage dashboard and MoEngageInApps framework enables you to show those InApp campaigns in your iOS Apps.
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => '98a44e1d673f228108c6777c02a42d49dfbc01f7eca72f4e44819ac4959cef82'
  }   

  s.addDirectUseWarning
  s.tvos.deployment_target = '11.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
end
