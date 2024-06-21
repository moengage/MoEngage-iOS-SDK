
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '9.17.5'
  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageSDK contains initialization, enabling/disabling of MoEngage frameworks.
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => '5ef464aafa69bd36d4e3dc9a44821f9f2cbc2190ce943aa1042929554dc20ce5'
  }   

  s.addDirectUseWarning
  s.tvos.deployment_target = '11.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation'
end
