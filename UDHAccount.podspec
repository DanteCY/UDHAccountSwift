Pod::Spec.new do |s|
  s.name                  = "UDHAccount"
  s.version               = "0.1.0"
  s.summary               = "iot账号库"
  s.homepage              = "https://www.aliyun.com/"
  s.license               = { :type => 'Copyright', :text => "Alibaba-INC copyright" }
  s.author                = { "hcy" => "317727215@qq.com" }
  s.source                = { :git => "https://github.com/DanteCY/UDHAccountSwift.git" }
  s.platform              = :ios, '10.0'
  #s.vendored_frameworks = 'UDHNetworking/UDHNetworking.framework'
  #s.frameworks = 'Foundation','CoreGraphics'
  s.source_files          ='UDHAccount/UDHAccount/**/*'
  s.requires_arc = true
  
  end