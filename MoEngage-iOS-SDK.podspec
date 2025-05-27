Pod::Spec.new do |s|
  require_relative 'Utilities/spec'
  s.extend MoEngageReleaseSDK::Spec
  s.define

  s.summary      = 'MoEngage for iOS'
  s.description  = <<-DESC
                   MoEngage is a mobile marketing automation company.
                   This framework acts like a umbrella framework to include all MoEngage frameworks.
                   Refer individual framework's description for their usages.
                   DESC

  s.tvos.deployment_target = '13.0'
  s.default_subspec = 'KMMedCore'
  s.subspec 'Core' do |ss|
    ss.extend MoEngageReleaseSDK::SubSpec
    ss.dependency_pod 'MoEngageSDK'
    ss.dependency_pod 'MoEngageCore'
    ss.dependency_pod 'MoEngageMessaging'
    ss.dependency_pod 'MoEngageSecurity'
  end

  s.subspec 'KMMedCore' do |ss|
    ss.extend MoEngageReleaseSDK::SubSpec
    ss.dependency 'MoEngage-iOS-SDK/Core'
    # can be updated to next major version range '~> 1.0.0'
    ss.dependency 'MoEngageKMMConditionEvaluator', "#{MoEngageReleaseSDK.config.kmm.ce}"
  end

  s.subspec 'InApps' do |ss|
    ss.extend MoEngageReleaseSDK::SubSpec
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency_pod 'MoEngageTriggerEvaluator'
    ss.dependency_pod 'MoEngageInApps'
  end

  s.subspec 'Cards' do |ss|
    ss.extend MoEngageReleaseSDK::SubSpec
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency_pod 'MoEngageCards'
  end

  s.subspec 'GeoFence' do |ss|
    ss.extend MoEngageReleaseSDK::SubSpec
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency_pod 'MoEngageGeofence', :ios
  end

  s.subspec 'RichNotification' do |ss|
    ss.extend MoEngageReleaseSDK::SubSpec
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency_pod 'MoEngageRichNotification', :ios
  end

  s.subspec 'Inbox' do |ss|
    ss.extend MoEngageReleaseSDK::SubSpec
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.ios.dependency 'MoEngage-iOS-SDK/RichNotification'
    ss.dependency_pod 'MoEngageInbox', :ios
  end

  s.subspec 'RealTimeTrigger' do |ss|
    ss.extend MoEngageReleaseSDK::SubSpec
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.ios.dependency 'MoEngage-iOS-SDK/RichNotification'
    ss.dependency_pod 'MoEngageRealTimeTrigger', :ios
  end
end
