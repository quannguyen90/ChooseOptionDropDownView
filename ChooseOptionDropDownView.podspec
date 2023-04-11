#
# Be sure to run `pod lib lint ChooseOptionDropDownView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ChooseOptionDropDownView'
  s.version          = '1.1.0'
  s.summary          = 'A short description of ChooseOptionDropDownView.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/quannguyen90/ChooseOptionDropDownView'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'quannguyen90' => 'quannv.tm@gmail.com' }
  s.source           = { :git => 'https://github.com/quannguyen90/ChooseOptionDropDownView.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'ChooseOptionDropDownView/Classes/**/*'  
  s.resources = ["ChooseOptionDropDownView/Fonts/*.{OTF,ttf}", 'ChooseOptionDropDownView/Assets/**/*.{png,pdf}']

  # s.resource_bundles = {
  #   'ChooseOptionDropDownView' => ['ChooseOptionDropDownView/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'SwiftMessages', '~> 9.0.6'
   s.dependency 'IQKeyboardManagerSwift', '~> 6.3.0'
end
