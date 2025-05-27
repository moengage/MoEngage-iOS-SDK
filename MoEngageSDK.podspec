
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageSDK contains initialization, enabling/disabling of MoEngage frameworks.
                   DESC

  s.addDirectUseWarning
  s.tvos.deployment_target = '13.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation'

  s.dependency 'MoEngageCore'
  s.dependency 'MoEngageMessaging'
end
