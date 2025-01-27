#!/usr/bin/ruby

# Usage:
# Publish pods to CocoaPods

require 'fileutils'
require 'json'
require 'ostruct'

config = JSON.parse(File.read('package.json'), {object_class: OpenStruct})
derived_data = File.expand_path('~/Library/Developer/Xcode/DerivedData')
config.packages.each do |package|
  podspec = "#{package.name}.podspec"
  next unless File.exist?(podspec)
  begin
    FileUtils.rm_rf(derived_data) if File.directory?(derived_data)
    system("pod trunk push \"#{podspec}\" --verbose --synchronous --allow-warnings", out: STDOUT, exception: true)
    sleep 1 # even with --synchronous flag push might fail for depending pods
  rescue => error
    puts "::warning::Pod published failed with #{error&.message}"
  end
end

# publish main pod
podspec = "#{config.name}.podspec"
return unless File.exist?(podspec)
begin
  FileUtils.rm_rf(derived_data) if File.directory?(derived_data)
  system("pod trunk push \"#{podspec}\" --verbose --synchronous --allow-warnings", out: STDOUT, exception: true)
rescue => error
  puts "::warning::Pod published failed with #{error&.message}"
end
