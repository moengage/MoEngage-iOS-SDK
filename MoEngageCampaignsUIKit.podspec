Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      = "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageCampaignsUIKit is the UI layer shared by MoEngage campaign modules,
                     including the display arbiter that decides which campaign holds the screen.
                   DESC

  s.addDirectUseWarning
  s.tvos.deployment_target = '13.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'UIKit'

  s.dependency 'MoEngageCore'
end
