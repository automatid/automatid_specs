Pod::Spec.new do |s|

  s.name             = 'AutomatID_OTML'
  s.module_name      = 'AutomatID_OTML'

  s.version          = '3.0.24'
  s.summary          = 'OTML iOS Framework'
  s.description      = <<-DESC
                    OTML iOS Framework
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }

  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s }
  s.swift_version = '5.0'

  s.ios.deployment_target = '10.0'

  # c++ serve per CardIO
  s.libraries = 'c++'
  s.frameworks = 'MobileCoreServices', 'WatchConnectivity', 'UIKit', 'Foundation', 'Security', 'CoreTelephony', 'StoreKit', 'LocalAuthentication', 'Social', 'CoreVideo', 'SystemConfiguration', 'Accelerate', 'WebKit', 'CoreImage', 'MessageUI', 'AVFoundation', 'CoreMedia', 'QuartzCore'

  s.ios.vendored_frameworks = 'AutomatID_OTML.xcframework'


  s.dependency 'lottie-ios', '2.5.3'
  s.dependency 'AutomatID_OTMLModels', '3.0.24' 
  s.dependency 'AutomatID_OTTBXML', '3.0.24'
  
  s.dependency 'AutomatID_OTMLCore', '3.0.24' 
  s.dependency 'libPhoneNumber-iOS', '0.9.15'
  s.dependency 'ZXingObjC', '3.6.5'

  s.dependency 'DYCoding', '1.0'
  s.dependency 'TOCropViewController', '2.6.1'
  

end
