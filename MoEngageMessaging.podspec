
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '4.17.5'
  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageMessaging module will help you support all the features related to push notifications in your App.
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => '5b0c406b33779ec3c4d09eb3d4361d9b08963601975214de370b264a4a82d4a7'
  }   

  s.addDirectUseWarning
  s.tvos.deployment_target = '11.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit'
  s.weak_framework = 'UserNotifications'
end
