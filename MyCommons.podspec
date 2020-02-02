#
# Be sure to run `pod lib lint MyCommons.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MyCommons"
  s.version          = "0.4.0"
  s.summary          = "A collection of classes and utilities that I frequently use in my projects."
  s.description      = <<-DESC
                        A collection of classes and utilities that I frequently use in my projects.
                            • OS Version check macros
                            • UIColor build macros
                       DESC
  s.homepage         = "https://github.com/pbeast/MyCommons"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "pbeast" => "ypavel@gmail.com" }
  s.source           = { :git => "https://github.com/pbeast/MyCommons.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/ypavel'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'MyCommons' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  # s.dependency 'WTAHelpers/WTAFrameHelpers', :git => 'https://github.com/willowtreeapps/WTAHelpers.git', :tag => '0.1.1'
end
