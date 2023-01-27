Pod::Spec.new do |s|

  s.name             = 'OTMLModels'
  s.module_name      = 'OTMLModels'

  s.version          = '0.0.1'
  s.summary          = 'OTML Models'
  s.description      = <<-DESC
                  OTML Models
                       DESC

  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }
  
  s.source           = { :git => 'git@github.com:opentech-com/openpay_bank_plugin_artifacts.git', :tag => s.version.to_s }
  
  s.ios.vendored_frameworks = 'OTMLModels.xcframework'

  s.ios.deployment_target = '10.0'
  s.dependency 'TBXML'

  
end
