
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} Campaigns for iOS"
  s.description  = <<-DESC
                     MoEngageLiveActivity helps you use live activities on iOS.
                   DESC

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'SwiftUI', 'ActivityKit', 'WidgetKit'

  s.dependency 'MoEngageCore'
end
