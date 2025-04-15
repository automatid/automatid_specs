Pod::Spec.new do |s|

  s.name             = 'AutomatID_OTMLFaceRecognitionAddon'
  s.version          = '3.0.25'
  s.summary          = 'AutomatID_OTMLFaceRecognitionAddon'
  s.description      = <<-DESC
      OTMLFaceRecognitionAddon includes MLKit Face Detection reader component and dependencies
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'iOS team' => 'ios@opentech.com' }
  s.source         = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s } #TODO: new repositories
  s.ios.vendored_frameworks = 'AutomatID_OTMLFaceRecognitionAddon.xcframework'
    
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.static_framework = true
  s.dependency "GoogleMLKit/FaceDetection"
  s.dependency 'AutomatID_OTML', '3.0.25' 
  s.dependency 'AutomatID_OTMLModels', '3.0.25' 
  s.dependency 'AutomatID_OTMLCore', '3.0.25' 
    
  s.ios.deployment_target = '12.0'
  s.swift_version = '5.0'
  
end
