Pod::Spec.new do |s|
  s.name             = 'OTMLMRZReaderAddon'
  s.version          = '2.3.5'
  s.summary          = 'OTMLMRZReaderAddon'
  s.description      = <<-DESC
  OTMLMRZReaderAddon includes MRZ reader component and dependencies
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'iOS team' => 'ios@opentech.com' }
  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s } # TODO: new github repositories
  
  s.static_framework = true
  
  s.ios.deployment_target = '11.0'

  s.ios.vendored_frameworks = 'OTMLMRZReaderAddon.xcframework'
  
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.resources = 'OTMLMRZReaderAddon/Assets/*'
  
  s.dependency 'OTML', '2.3.5' 
  s.dependency 'OTMLModels', '2.3.5' 
  s.dependency 'OTMLCore', '2.3.5' 
  s.dependency 'GoogleMLKit/TextRecognition'
  s.dependency "GPUImage"
  
  s.swift_version = '5.0'

end
