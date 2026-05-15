Pod::Spec.new do |s|
  s.name             = 'OTHFOTMLMRZReaderAddon'
  s.version          = '4.0.18'
  s.summary          = 'OTHFOTMLMRZReaderAddon'
  s.description      = <<-DESC
  OTMLMRZReaderAddon includes MRZ reader component and dependencies
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'iOS team' => 'ios@opentech.com' }
  s.source           = { :git => 'git@github.com:automatid/OTHFios_artifacts.git', :tag => s.version.to_s } # TODO: new github repositories
  
  s.static_framework = true
  
  s.ios.deployment_target = '15.0'

  s.ios.vendored_frameworks = 'OTHFOTMLMRZReaderAddon.xcframework'
  
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO'}

  s.resources = 'OTMLMRZReaderAddon/Assets/*'
  
  s.dependency 'OTHFOTML', '4.0.18' 
  s.dependency 'OTHFOTMLModels', '4.0.18' 
  s.dependency 'OTHFOTMLCore', '4.0.18' 
  s.dependency 'GoogleMLKit/TextRecognition'
  s.dependency "GPUImage"
  
  s.swift_version = '5.0'

end
