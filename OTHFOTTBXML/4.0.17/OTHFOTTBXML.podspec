Pod::Spec.new do |spec|
    spec.name          = 'OTHFOTTBXML'
    spec.version          = '4.0.17'
    spec.license       = { :type => 'MIT' }
    spec.homepage      = 'http://www.tbxml.co.uk'
    spec.authors       = { 'Tom Bradley' => 'tom@tbxml.co.uk' }
    spec.summary       = 'A fast XML parser.'
    spec.source           = { :git => 'git@github.com:automatid/OTHFios_artifacts.git', :tag => spec.version.to_s }
    spec.ios.deployment_target  = '10.0'
  
    spec.ios.vendored_frameworks = 'OTHFOTTBXML.xcframework'

    spec.ios.framework  = 'UIKit'
end