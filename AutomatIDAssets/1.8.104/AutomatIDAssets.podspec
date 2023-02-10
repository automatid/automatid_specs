Pod::Spec.new do |s|

  s.name             = 'AutomatIDAssets'
  s.module_name      = 'AutomatIDAssets'

  s.version          = '1.8.104'
  s.summary          = 'Openpay plugin SDK'
  s.description      = <<-DESC
  Openpay plugin SDK
                       DESC
  s.static_framework = true
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }
  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.pod_target_xcconfig = { "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES"}

  s.ios.vendored_frameworks = 'AutomatIDAssets.xcframework'

end
