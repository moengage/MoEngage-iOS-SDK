module MoEngageSDK
  module Spec
    def define()
      podspec_path = caller.find do |trace|
        File.extname(trace.split(":")[0]).eql?('.podspec')
      end.split(":")[0]

      podspec = File.basename(podspec_path, File.extname(podspec_path))

      self.name              = podspec
      self.homepage          = 'https://www.moengage.com'
      self.documentation_url = 'https://developers.moengage.com'
      self.license           = { :type => 'Commercial', :file => 'LICENSE' }
      self.author            = { 'MobileDev' => 'mobiledevs@moengage.com' }
      self.social_media_url  = 'https://twitter.com/moengage'

      self.ios.deployment_target = '11.0'
      self.requires_arc = true
      self.preserve_paths = "*.md", "LICENSE"
    end

    def addDirectUseWarning()
        self.description << '\nDO NOT USE THIS POD DIRECTLY, USE MoEngage-iOS-SDK INSTEAD THAT INCLUDES THIS POD'
    end
  end
end