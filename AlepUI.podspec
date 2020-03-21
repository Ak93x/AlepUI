#
# Be sure to run `pod lib lint AlepUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AlepUI'
  s.version          = '0.1.4'
  s.summary          = 'AlepUI for Coding UI Easily'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "AlepUI makes it easier to code all UIKit objects in one line of code."

  s.homepage         = 'https://github.com/Ak93x/AlepUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ak93x' => 'kvtmi.apps@gmail.com' }
  s.source           = { :git => 'https://github.com/Ak93x/AlepUI.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/AkKhawatmi'

  s.ios.deployment_target = '10.0'
  #s.swift_version = '>= 3.2, <= 4.0'
  s.swift_version = '5.0'

  s.source_files = 'Source/**/*.swift'
  
  # s.resource_bundles = {
  #   'AlepUI' => ['AlepUI/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
