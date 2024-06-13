
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '1.9.5'
  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageSecurity enhances security for modules to be used accross all the MoEngage frameworks.
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => '245413c1789cbd94e618dfd43eb86a32eee3ea8f3b3f00e3d08b57fb6cfab03a'
  }   

  s.addDirectUseWarning
  s.tvos.deployment_target = '11.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation', 'Security'
end
