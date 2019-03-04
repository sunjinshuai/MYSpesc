#
# Be sure to run `pod lib lint MYFoundation.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MYFoundation'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MYFoundation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/s_mike@163.com/MYFoundation'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 's_mike@163.com' => 's_mike@163.com' }
  s.source           = { :git => 'https://github.com/s_mike@163.com/MYFoundation.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.frameworks = 'UIKit', 'Foundation'
  # For Default
  s.default_subspec = 'Core'
  s.static_framework = true
  
  ### Subspecs
  s.subspec 'Core' do |core|
      core.dependency 'MYFoundation/Environment'
      core.dependency 'MYFoundation/Logger'
      core.source_files = 'MYFoundation/Classes/MYFoundation.h'
  end
  
  s.subspec 'Environment' do |environment|
      environment.source_files = 'MYFoundation/Classes/MYEnvironmentManager.h', 'MYFoundation/Classes/Environment/**/*'
  end
  
  s.subspec 'Logger' do |log|
      log.source_files = 'MYFoundation/Classes/MYLogger.h', 'MYFoundation/Classes/Logger/**/*'
      log.dependency 'CocoaLumberjack'
  end
  
end
