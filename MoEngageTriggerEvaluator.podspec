
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '1.01.1'
  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageTriggerEvaluator evaluates trigger conditions of InApp campaigns.
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => 'bed34765d1f80e7d8a9d2210b6212e118360f68f1481c4929d1db2c3ae78c9a7'
  }   

  s.addDirectUseWarning
  s.tvos.deployment_target = '11.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'
end
