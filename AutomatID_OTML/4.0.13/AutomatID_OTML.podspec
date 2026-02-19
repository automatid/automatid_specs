Pod::Spec.new do |s|

  s.name             = 'AutomatID_OTML'
  s.module_name      = 'AutomatID_OTML'

  s.version          = '4.0.13'
  s.summary          = 'OTML iOS Framework'
  s.description      = <<-DESC
                    OTML iOS Framework
                       DESC
  s.homepage         = 'https://opentech.com'
  s.license          = { :type => 'FULL', :file => 'LICENSE' }
  s.author           = { 'opentech ios team' => 'ios@opentech.com' }

  s.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => s.version.to_s }
  s.swift_version = '5.0'

  s.ios.deployment_target = '15.0'

  s.frameworks = 'MobileCoreServices', 'WatchConnectivity', 'UIKit', 'Foundation', 'Security', 'CoreTelephony', 'StoreKit', 'LocalAuthentication', 'Social', 'CoreVideo', 'SystemConfiguration', 'Accelerate', 'WebKit', 'CoreImage', 'MessageUI', 'AVFoundation', 'CoreMedia', 'QuartzCore'

  s.ios.vendored_frameworks = 'AutomatID_OTML.xcframework'


  s.dependency 'lottie-ios', '~>4'
  s.dependency 'AutomatID_OTMLModels', '4.0.13' 
  s.dependency 'AutomatID_OTTBXML', '4.0.13'
  
  s.dependency 'AutomatID_OTMLCore', '4.0.13' 
  

end
