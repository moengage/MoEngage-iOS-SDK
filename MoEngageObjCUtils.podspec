
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '3.17.5'
  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageObjCUtils contains Objective-C Utils to be used accross all the MoEngage frameworks.
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1}/#{s.name}.xcframework.zip",
    :sha256 => '9976c86489aecfc435dd3e22e0505e5bf00156e87e65c352868f7e9f7a699f10'
  }

  s.addDirectUseWarning
  s.tvos.deployment_target = '11.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation'
end
