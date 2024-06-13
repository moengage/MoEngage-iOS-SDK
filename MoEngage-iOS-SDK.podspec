
Pod::Spec.new do |s|
  require_relative 'Utils/spec'
  s.extend MoEngageSDK::Spec
  s.define

  s.version      = '9.17.5'
  s.summary      = 'MoEngage for iOS'
  s.description  = <<-DESC
                   MoEngage is a mobile marketing automation company.
                   This framework acts like a umbrella framework to include all MoEngage frameworks.
                   Refer individual framework's description for their usages.
                   DESC

  s.source       = {
    :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git',
    :tag => s.version.to_s 
  }

  s.tvos.deployment_target = '11.0'
  s.default_subspec = 'Core'
  s.subspec 'Core' do |ss|
    ss.dependency 'MoEngageSDK', '9.17.5'
    ss.dependency 'MoEngageCore', '9.17.5'
    ss.dependency 'MoEngageAnalytics', '4.17.5'
    ss.dependency 'MoEngageMessaging', '4.17.5'
    ss.dependency 'MoEngageObjCUtils', '3.17.5'
    ss.dependency 'MoEngageSecurity', '1.9.5'
  end

  s.subspec 'InApp' do |ss|
    ss.dependency 'MoEngageSDK/Core'
    ss.dependency 'MoEngageTriggerEvaluator', '1.01.0'
    ss.dependency 'MoEngageInApp', '6.00.3'
  end

  s.subspec 'Cards' do |ss|
    ss.dependency 'MoEngageSDK/Core'
    ss.dependency 'MoEngageCards', '4.16.1'
  end

  s.subspec 'GeoFence' do |ss|
    ss.dependency 'MoEngageSDK/Core'
    ss.dependency 'MoEngageGeofence', '5.16.2'
  end

  s.subspec 'RichNotification' do |ss|
    ss.dependency 'MoEngageSDK/Core'
    ss.dependency 'MoEngageRichNotification', '7.16.1'
  end

  s.subspec 'Inbox' do |ss|
    ss.dependency 'MoEngageSDK/Core'
    ss.dependency 'MoEngageSDK/RichNotification'
    ss.dependency 'MoEngageInbox', '2.16.2'
  end

  s.subspec 'RealTimeTrigger' do |ss|
    ss.dependency 'MoEngageSDK/Core'
    ss.dependency 'MoEngageSDK/RichNotification'
    ss.dependency 'MoEngageRealTimeTrigger', '2.16.1'
  end
end
