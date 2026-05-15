Pod::Spec.new do |s|

  s.name             = 'OTHFOTMLFaceRecognitionAddon'
  s.version          = '4.0.17'
  s.summary          = 'OTHFOTMLFaceRecognitionAddon'
  s.description      = <<-DESC
      OTMLFaceRecognitionAddon includes MLKit Face Detection reader component and dependencies
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'iOS team' => 'ios@opentech.com' }
  s.source         = { :git => 'git@github.com:automatid/OTHFios_artifacts.git', :tag => s.version.to_s } #TODO: new repositories
  s.ios.vendored_frameworks = 'OTHFOTMLFaceRecognitionAddon.xcframework'
    
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO'}
  
  s.static_framework = true
  s.dependency "GoogleMLKit/FaceDetection", "~> 6"
  s.dependency 'OTHFOTML', '4.0.17' 
  s.dependency 'OTHFOTMLModels', '4.0.17' 
  s.dependency 'OTHFOTMLCore', '4.0.17' 
    
  s.ios.deployment_target = '15.0'
  s.swift_version = '5.0'
  
end
