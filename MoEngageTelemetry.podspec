
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      = "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageTelemetry collects SDK performance telemetry
                     used to monitor and improve MoEngage SDK health.
                   DESC

  s.addDirectUseWarning
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'Network'

  s.dependency 'MoEngageCore'
end
