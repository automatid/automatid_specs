Pod::Spec.new do |s|
  s.name             = 'AutomatID_OTMLNfcDocumentReaderModule'
  s.version          = '4.0.14'
  
  s.summary          = 'A short description of OTMLNfcDocumentReaderModule.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }
  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s } # TODO: use the new github reposiories
  s.ios.vendored_frameworks = 'AutomatID_OTMLNfcDocumentReaderModule.xcframework'
  s.ios.deployment_target = '15.0'

  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO', 'SWIFT_VERSION' => '5.10' }
  s.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit' }

  
  s.dependency 'AutomatID_OTML', '4.0.14' 
  s.dependency 'AutomatID_OTMLModels', '4.0.14' 
  s.dependency 'AutomatID_OTMLCore', '4.0.14' 
  s.dependency "OpenSSL-Universal", '~>1.1'
  
  s.frameworks = 'UIKit', 'Foundation', 'Security'
  
  s.swift_version = '5.0'
  
end
