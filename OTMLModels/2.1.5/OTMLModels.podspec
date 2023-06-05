Pod::Spec.new do |s|

  s.name             = 'OTMLModels'
  s.module_name      = 'OTMLModels'

  s.version          = '2.1.5'
  s.summary          = 'OTML Models'
  s.description      = <<-DESC
                  OTML Models
                       DESC

  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }
  
  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s }
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.ios.vendored_frameworks = 'OTMLModels.xcframework'

  s.ios.deployment_target = '10.0'
  s.dependency 'TBXML'

  
end
