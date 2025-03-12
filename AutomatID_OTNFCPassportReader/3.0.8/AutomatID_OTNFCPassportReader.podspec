Pod::Spec.new do |s|

  s.name         = "AutomatID_OTNFCPassportReader"

  s.version      = '3.0.8'
  s.summary      = "This package handles reading an NFC Enabled passport using iOS 13 CoreNFC APIS"

  s.homepage     = "https://github.com/AndyQ/NFCPassportReader"
  s.license      = "MIT"
  s.author       = { "Andy Qua" => "andy.qua@gmail.com" }
  s.platform = :ios
  s.ios.deployment_target = "10.0"

  s.source       = { :git => "git@github.com:automatid/automatid_ios_artifacts.git", :tag => "#{s.version}" }
  s.ios.vendored_frameworks = 'OTNFCPassportReader.xcframework'
  
  s.swift_version = "5.0"

  s.dependency "OpenSSL-Universal", '1.1.180'
  s.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit' }

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
