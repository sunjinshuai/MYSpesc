
Pod::Spec.new do |s|

  s.name         = "MYGoodsServiceProtocol"
  s.version      = "0.0.1"
  s.summary      = " MYGoodsServiceProtocol，商品业务组件"
  s.description  = <<-DESC
		   MYGoodsServiceProtocol，商品业务组件
                   DESC

  s.homepage     = "https://github.com/sunjinshuai/MYGoodsServiceProtocol"

  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  s.author             = { "sunjinshuai" => "s_mike@163.com" }

  s.platform     = :ios
  s.source       = { 
	:git => "https://github.com/sunjinshuai/MYGoodsServiceProtocol.git", 
	:tag => "#{s.version}" 
  }

  s.source_files = 'MYGoodsServiceProtocol/MYGoodsServiceProtocol/**/*.{h,m}'

  # s.resource_bundles = {
  #   'MYProtocolManager' => ['MYProtocolManager/Assets/*.png']
  # }

  s.public_header_files = 'MYGoodsServiceProtocol/MYGoodsServiceProtocol/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
