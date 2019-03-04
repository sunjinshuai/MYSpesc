#
# Be sure to run `pod lib lint MYITGInterface.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MYITGInterface'
  s.version          = '0.0.1'
  s.summary          = 'A short description of MYITGInterface.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/s_mike@163.com/MYITGInterface'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 's_mike@163.com' => 's_mike@163.com' }
  s.source           = { :git => 'https://github.com/s_mike@163.com/MYITGInterface.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.frameworks = 'UIKit', 'Foundation'
  s.static_framework = true
  # For Default
  s.default_subspec = 'Core'
  s.dependency 'Masonry'
  s.xcconfig = {
      'GCC_PREPROCESSOR_DEFINITIONS' => 'MAS_SHORTHAND_GLOBALS=1'
  }
  
  ### Subspecs
  s.subspec 'Core' do |core|
      core.source_files = 'MYITGInterface/Classes/MYITGInterface.h'
      core.dependency 'MYITGInterface/Base'
  end
  
  s.subspec 'Base' do |base|
      base.source_files = 'MYITGInterface/Classes/Base/**/*'
      base.resource_bundles = {
          'Base' => 'MYITGInterface/Assets/Base/*.*'
      }
  end
  
end