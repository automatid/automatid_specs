Pod::Spec.new do |s|

  s.name             = 'AutomatID'
  s.module_name      = 'AutomatID'

  
  s.version          = '2.0.24'
  s.summary          = 'Openpay plugin SDK'
  s.description      = <<-DESC
  Openpay plugin SDK
                       DESC

  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }
  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s }
  
  s.static_framework = true
  s.ios.deployment_target = '13.0'
  
  s.ios.vendored_frameworks = 'AutomatID.xcframework'
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO', "EXCLUDED_ARCHS[sdk=iphonesimulator*]" => "arm64" }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.resources = 'Assets/*'

  s.dependency 'AutomatID_OTML' , '2.0.24' 
  s.dependency 'AutomatID_OTMLModels', '2.0.24' 
  s.dependency 'AutomatID_OTMLCore', '2.0.24' 
  s.dependency 'AutomatID_OTMLMRZReaderAddon', '2.0.24' 
  s.dependency 'AutomatID_OTMLNfcDocumentReaderModule', '2.0.24' 
  s.dependency 'AutomatID_OTMLFaceRecognitionAddon', '2.0.24' 

end
