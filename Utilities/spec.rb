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
      self.documentation_url = 'https://www.moengage.com/docs/developer-guide/ios-sdk'
      self.changelog         = 'https://www.moengage.com/docs/release-notes/sdks/ios'
      self.license           = { :type => 'Commercial', :text => File.read('LICENSE') }
      self.author            = { 'MobileDev' => 'mobiledevs@moengage.com' }
      self.social_media_url  = 'https://x.com/moengage'

      if package
        self.source       = { :http => package.url, :sha256 => package[:hash] }
      else
        self.source       = {
          :git => 'https://github.com/moengage/apple-sdk.git',
          :tag => "#{MoEngageReleaseSDK.config.tagPrefix}#{self.version.to_s}"
        }
      end

      self.ios.deployment_target = '13.0'
      self.requires_arc = true

      # A statically linked module is not embedded in the consumer's app, so CocoaPods
      # copies nothing out of the vendored xcframework — unlike a dynamic module, whose
      # `<Module>.bundle` rides along inside the embedded framework. The bundle sits beside
      # the xcframework in the release archive and is discarded at `pod install` unless
      # declared here, which leaves the module's images, XIBs, storyboards and privacy
      # manifest unreachable at runtime. That fails silently: the code still links and the
      # build still succeeds, but the UI renders blank.
      #
      # `staticFramework` and `common` are propagated into `package.json` by the SDK repo's
      # release script, so this is inert for dynamically linked modules and for releases
      # cut before those flags existed.
      if package&.staticFramework
        self.ios.resources = "#{self.name}.bundle"
        self.tvos.resources = "tvos/#{self.name}.bundle" if package.common
      end

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
