#
# Be sure to run `pod lib lint MGActionStageSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MGActionStageSwift'
  s.version          = '0.0.5'
  s.summary          = 'ActionStageSwift. 升级Swift4.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/mgzf/MGActionStageSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'spf' => 'spf_ios@163.com' }
  s.source           = { :git => 'https://github.com/mgzf/MGActionStageSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.default_subspec = 'ActionStageSwift'

  s.subspec 'ActionStageSwift' do |actionStageSwift|
    actionStageSwift.source_files = 'MGActionStageSwift/Classes/ActionStageSwift/*.{swift,m,h}'
  end

  s.subspec 'MGActionStageSwift_Extension' do |extension|
    extension.source_files = 'MGActionStageSwift/Classes/Extension/*.{swift,m,h}'
    extension.dependency 'MGActionStageSwift/ActionStageSwift'
  end
  
  # s.resource_bundles = {
  #   'MGActionStageSwift' => ['MGActionStageSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
