
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '4.17.5'
  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     MoEngageAnalytics framework enables you to track required data regarding user and user's activities inside the app to use the same for effective engagement.
                   DESC

  s.source       = {
    :http => "https://github.com/moengage/MoEngage-iOS-SDK/releases/download/9.17.5-preview.1/#{s.name}.xcframework.zip",
    :sha256 => '6ce3de0db2257d9baf1f654e2f59d83ebb4262a0147829ef73ca278bb7e74e97'
  }   

  s.addDirectUseWarning
  s.tvos.deployment_target = '11.0'
  s.vendored_frameworks = "#{s.name}.xcframework"
  s.frameworks = 'Foundation'
end
