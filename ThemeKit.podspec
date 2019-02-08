#
# Be sure to run `pod lib lint ThemeKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'bellots/ThemeKit'
  s.version          = '0.1.6'
  s.summary          = 'Una libreria che consente di gestire i temi tramite UIAppearance'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Una libreria che consente di gestire i temi tramite UIAppearance.'

  s.homepage         = 'https://github.com/bellots/ThemeKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andrea Bellotto' => 'andreabellotto88@gmail.com' }
  s.source           = { :git => 'git@github.com:bellots/ThemeKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.swift_version = '4.2'
  s.source_files = 'ThemeKit/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ThemeKit' => ['ThemeKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end