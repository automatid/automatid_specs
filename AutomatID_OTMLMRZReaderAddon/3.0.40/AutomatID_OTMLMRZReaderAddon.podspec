Pod::Spec.new do |s|
  s.name             = 'AutomatID_OTMLMRZReaderAddon'
  s.version          = '3.0.40'
  s.summary          = 'AutomatID_OTMLMRZReaderAddon'
  s.description      = <<-DESC
  OTMLMRZReaderAddon includes MRZ reader component and dependencies
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'iOS team' => 'ios@opentech.com' }
  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s } # TODO: new github repositories
  
  s.static_framework = true
  
  s.ios.deployment_target = '13.0'

  s.ios.vendored_frameworks = 'AutomatID_OTMLMRZReaderAddon.xcframework'
  
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO'}

  s.resources = 'OTMLMRZReaderAddon/Assets/*'
  
  s.dependency 'AutomatID_OTML', '3.0.40' 
  s.dependency 'AutomatID_OTMLModels', '3.0.40' 
  s.dependency 'AutomatID_OTMLCore', '3.0.40' 
  s.dependency 'GoogleMLKit/TextRecognition'
  s.dependency "GPUImage"
  
  s.swift_version = '5.0'

end
