Pod::Spec.new do |s|
  s.name             = 'OTMLNfcDocumentReaderModule'
  s.version          = '1.9.19'
  
  s.summary          = 'A short description of OTMLNfcDocumentReaderModule.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }
  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s } # TODO: use the new github reposiories
  s.ios.vendored_frameworks = 'OTMLNfcDocumentReaderModule.xcframework'
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { "OTHER_LDFLAGS" => "-ObjC", 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF' => 'NO', 'GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS' => 'NO' , 'SWIFT_VERSION' => '4.2' }
  
  s.dependency "NFCPassportReader"#, "1.0.13"
  s.dependency 'OTML'
  s.dependency 'OTMLModels'
  s.dependency 'OTMLCore'

  s.frameworks = 'UIKit', 'Foundation', 'Security'
  s.swift_version = '4.2'
  
end
