Pod::Spec.new do |s|
  s.name             = 'OTMLMRZReaderAddon'
  s.version          = '2.1.0'
  s.summary          = 'OTMLMRZReaderAddon'
  s.description      = <<-DESC
  OTMLMRZReaderAddon includes MRZ reader component and dependencies
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'iOS team' => 'ios@opentech.com' }
  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s } # TODO: new github repositories

  s.ios.deployment_target = '9.0'
  s.ios.vendored_library = 'OTMLMRZReaderAddon/Libraries/processed/*.a'

  s.source_files = 'OTMLMRZReaderAddon/Sources/**/*', 'OTMLMRZReaderAddon.OTVersion.h'
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO' }
  s.resources = 'OTMLMRZReaderAddon/Assets/*'
  
  s.dependency 'OTML'
  s.dependency 'OTMLModels'
  s.dependency 'OTMLCore'
  s.dependency 'GoogleMLKit/TextRecognition'
  s.dependency "GPUImage"
  
  s.swift_version = '5.0'

end
