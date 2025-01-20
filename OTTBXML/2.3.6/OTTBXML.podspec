Pod::Spec.new do |spec|
    spec.name          = 'OTTBXML'
    spec.version          = '2.3.6'
    spec.license       = { :type => 'MIT' }
    spec.homepage      = 'http://www.tbxml.co.uk'
    spec.authors       = { 'Tom Bradley' => 'tom@tbxml.co.uk' }
    spec.summary       = 'A fast XML parser.'
    spec.source           = { :git => 'git@github.com:automatid/automatid_ios_artifacts.git', :tag => spec.version.to_s }
    spec.ios.deployment_target  = '10.0'
  
    spec.ios.vendored_frameworks = 'OTTBXML.xcframework'

    spec.ios.framework  = 'UIKit'
end