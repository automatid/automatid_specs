Pod::Spec.new do |spec|

  spec.name         = "NFCPassportReader"

  spec.version      = '1.8.104'
  spec.summary      = "This package handles reading an NFC Enabled passport using iOS 13 CoreNFC APIS"

  spec.homepage     = "https://github.com/AndyQ/NFCPassportReader"
  spec.license      = "MIT"
  spec.author       = { "Andy Qua" => "andy.qua@gmail.com" }
  spec.platform = :ios
  spec.ios.deployment_target = "10.0"

  spec.source       = { :git => "git@github.com:automatid/automatid_ios_artifacts.git", :tag => "#{spec.version}" }
  spec.ios.vendored_frameworks = 'NFCPassportReader.xcframework'
  
  spec.swift_version = "5.0"

  spec.dependency "OpenSSL-Universal", '1.1.180'
  spec.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit' }

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
