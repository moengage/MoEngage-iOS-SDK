
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     MoEngageInApps Messaging are custom views which you can send to a segment of users to show custom messages or give new offers or take to some specific pages.
                     They can be created from your MoEngage dashboard and MoEngageInApps framework enables you to show those InApp campaigns in your iOS Apps.
                   DESC

  s.addDirectUseWarning
  s.tvos.deployment_target = '11.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'

  s.dependency 'MoEngageCore'
  s.dependency 'MoEngageAnalytics'
  s.dependency 'MoEngageMessaging'
  s.dependency 'MoEngageObjCUtils'
  s.dependency 'MoEngageTriggerEvaluator'
end
