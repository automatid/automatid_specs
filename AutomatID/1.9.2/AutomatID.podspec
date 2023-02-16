Pod::Spec.new do |s|

  s.name             = 'AutomatID'
  s.module_name      = 'AutomatID'

  s.version          = '1.9.2'
  s.summary          = 'Openpay plugin SDK'
  s.description      = <<-DESC
  Openpay plugin SDK
                       DESC

  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }
  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.pod_target_xcconfig = { "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "YES"}

  s.ios.vendored_frameworks = 'AutomatID.xcframework'

  s.resources = 'Assets/*'

  s.dependency 'OTML'
  s.dependency 'OTMLModels'
  s.dependency 'OTMLCore'
  s.dependency 'OTMLMRZReaderAddon'
  s.dependency 'OTMLNfcDocumentReaderModule'
  s.dependency 'OTMLFaceRecognitionAddon'
  s.dependency 'NFCPassportReader'

end
