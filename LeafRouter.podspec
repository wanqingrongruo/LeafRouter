#
# Be sure to run `pod lib lint LeafRouter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LeafRouter'
  s.version          = '0.1.1'
  s.summary          = 'App router'

  s.description      = <<-DESC
App Router, which helps us to navigate in our apps.
                       DESC

  s.homepage         = 'https://github.com/wanqingrongruo/LeafRouter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wanqingrongruo' => 'zwxwqrr@gmail.com' }
  s.source           = { :git => 'https://github.com/wanqingrongruo/LeafRouter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_version = '5.0'

  s.source_files = 'LeafRouter/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LeafRouter' => ['LeafRouter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
