Pod::Spec.new do |s|

    s.name             = 'AutomatID_OTMLCore'
    s.module_name      = 'AutomatID_OTMLCore'
  
    s.version          = '3.0.36'
    s.summary          = 'Opentech core layer framework'
    s.description      = <<-DESC
      Opentech Core Framework contains utility classes for the other opentech products
                         DESC
  
    s.homepage         = 'https://opentech.com'
    s.license          = { :type => 'FULL', :file => 'LICENSE' }
    s.author           = { 'opentech ios team' => 'ios@opentech.com' }
    s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s }
    s.ios.deployment_target = '10.0'
    
    s.pod_target_xcconfig = { "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES", "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
    s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    
    s.frameworks = 'MobileCoreServices', 'UIKit', 'Foundation', 'Security', 'CoreTelephony', 'LocalAuthentication', 'SystemConfiguration', 'QuartzCore'

    s.dependency 'SAMKeychain'    
  
    s.ios.vendored_frameworks = 'AutomatID_OTMLCore.xcframework'
  
  end
  
