
Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      =  "#{s.name} for iOS"
  s.description  = <<-DESC
                     Integration utilities for MoEngage app extensions.
                   DESC

  s.addDirectUseWarning
  s.preserve_paths = '*'

  s.dependency 'MoEngageMessaging'
end
