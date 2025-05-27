
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageTriggerEvaluator evaluates trigger conditions of InApp campaigns.
                   DESC

  s.addDirectUseWarning
  s.tvos.deployment_target = '13.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'

  s.dependency 'MoEngageCore'
end
