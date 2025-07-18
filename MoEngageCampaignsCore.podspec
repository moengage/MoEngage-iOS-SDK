
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageCampaignsCore contains the central configuration of Campaigns and common Utils to be used accross all the MoEngage frameworks.
                   DESC

  s.addDirectUseWarning
  s.tvos.deployment_target = '13.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit', 'SystemConfiguration' , 'Security'
  s.weak_framework = 'UserNotifications'

  s.dependency 'MoEngageCore'
end
