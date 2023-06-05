Pod::Spec.new do |s|

  s.name             = 'OTML'
  s.module_name      = 'OTML'

  s.version          = '2.1.4'
  s.summary          = 'OTML iOS Framework'
  s.description      = <<-DESC
                    OTML iOS Framework
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }

  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s }
  s.swift_version = '5.0'

  s.ios.deployment_target = '10.0'

  # c++ serve per CardIO
  s.libraries = 'c++'
  s.frameworks = 'MobileCoreServices', 'WatchConnectivity', 'UIKit', 'Foundation', 'Security', 'CoreTelephony', 'StoreKit', 'LocalAuthentication', 'Social', 'CoreVideo', 'SystemConfiguration', 'Accelerate', 'WebKit', 'CoreImage', 'MessageUI', 'AVFoundation', 'CoreMedia', 'QuartzCore'

  s.ios.vendored_frameworks = 'OTML.xcframework'

  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO', "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }

  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.dependency 'lottie-ios', '2.5.3'
  s.dependency 'TBXML'
  s.dependency 'OTMLModels'
  s.dependency 'DYCoding'
  s.dependency 'OTMLCore'

end
