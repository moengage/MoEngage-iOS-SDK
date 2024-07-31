
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

  s.tvos.deployment_target = '11.0'
  s.default_subspec = 'Core'
  s.subspec 'Core' do |ss|
    ss.dependency 'MoEngageSDK', '9.18.0'
    ss.dependency 'MoEngageCore', '9.18.0'
    ss.dependency 'MoEngageAnalytics', '4.18.0'
    ss.dependency 'MoEngageMessaging', '4.18.0'
    ss.dependency 'MoEngageObjCUtils', '3.18.0'
    ss.dependency 'MoEngageSecurity', '1.10.0'
  end

  s.subspec 'InApps' do |ss|
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency 'MoEngageTriggerEvaluator', '1.02.0'
    ss.dependency 'MoEngageInApps', '6.01.0'
  end

  s.subspec 'Cards' do |ss|
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency 'MoEngageCards', '4.17.0'
  end

  s.subspec 'GeoFence' do |ss|
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency 'MoEngageGeofence', '5.17.0'
  end

  s.subspec 'RichNotification' do |ss|
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency 'MoEngageRichNotification', '7.17.0'
  end

  s.subspec 'Inbox' do |ss|
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency 'MoEngage-iOS-SDK/RichNotification'
    ss.dependency 'MoEngageInbox', '2.17.0'
  end

  s.subspec 'RealTimeTrigger' do |ss|
    ss.dependency 'MoEngage-iOS-SDK/Core'
    ss.dependency 'MoEngage-iOS-SDK/RichNotification'
    ss.dependency 'MoEngageRealTimeTrigger', '2.17.0'
  end
end
