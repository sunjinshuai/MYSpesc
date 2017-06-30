Pod::Spec.new do |s|
  s.name             = 'MYProtocolManager'
  s.version          = '0.0.1'
  s.summary          = '中间件MYProtocolManager.'

  s.description      = <<-DESC
               中间件MYProtocolManager，中间件MYProtocolManager。    
                       DESC

  s.homepage         = 'https://github.com/sunjinshuai/MYProtocolManager'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sunjinshuai' => 's_mike@163.com' }
  s.source           = { :git => 'https://github.com/sunjinshuai/MYProtocolManager.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'MYProtocolManager/**/*.{h,m}'

  # s.resource_bundles = {
  #   'MYProtocolManager' => ['MYProtocolManager/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
