Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      = "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageRecommendations provides APIs to fetch product
                     recommendations from MoEngage.
                   DESC

  s.addDirectUseWarning
  s.tvos.deployment_target = '13.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation'

  s.dependency 'MoEngageCore'
end
