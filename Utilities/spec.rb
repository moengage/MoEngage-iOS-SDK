require 'fileutils'
require 'json'
require 'ostruct'

module MoEngageReleaseSDK
  @@config = JSON.parse(File.read('package.json'), {object_class: OpenStruct})
  def self.config
    @@config
  end

  module Spec
    def define()
      podspec_path = caller.find do |trace|
        File.extname(trace.split(":")[0]).eql?('.podspec')
      end.split(":")[0]

      podspec = File.basename(podspec_path, File.extname(podspec_path))
      package_index = MoEngageReleaseSDK.config.packages.find_index { |package| package.name == podspec }
      package = MoEngageReleaseSDK.config.packages[package_index] if package_index

      self.name              = podspec
      self.version           = package&.version || MoEngageReleaseSDK.config.version
      self.homepage          = 'https://www.moengage.com'
      self.documentation_url = 'https://developers.moengage.com'
      self.license           = { :type => 'Commercial', :text => File.read('LICENSE') }
      self.author            = { 'MobileDev' => 'mobiledevs@moengage.com' }
      self.social_media_url  = 'https://twitter.com/moengage'

      if package
        self.source       = { :http => package.url, :sha256 => package[:hash] }
      else
        self.source       = {
          :git => 'https://github.com/moengage/MoEngage-iOS-SDK.git',
          :tag => "#{MoEngageReleaseSDK.config.tagPrefix}#{self.version.to_s}"
        }
      end

      self.ios.deployment_target = '11.0'
      self.requires_arc = true
      self.preserve_paths = "*.md", "LICENSE" unless package
    end

    def addDirectUseWarning()
        self.description << '\nDO NOT USE THIS POD DIRECTLY, USE MoEngage-iOS-SDK INSTEAD THAT INCLUDES THIS POD'
    end
  end

  module SubSpec
    def dependency_pod(name, proxy = nil)
      dependency = MoEngageReleaseSDK.config.packages.find { |package| package.name.eql?(name) }
      if proxy
        self.send(proxy).dependency name, dependency.version
      else
        self.dependency name, dependency.version
      end
    end
  end
end