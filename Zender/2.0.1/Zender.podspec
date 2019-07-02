Pod::Spec.new do |s|
  s.name             = "Zender"
  s.version          = "2.0.1"
  s.summary          = "The Zender iOS Player"
  s.homepage         = "https://www.zender.tv"
  s.documentation_url = "https://github.com/zendertv/zender-docs"

  s.license      = { :type => "Proprietary", :text => <<-LICENSE
                          Copyright 2019 Small Town Heroes BVBA.
                          Confidential and Proprietary. All rights reserved.
                        LICENSE
                      }

  s.author           = { "Zender" => "hello@zender.tv" }
  s.source           = { :http => "https://repo.zender.tv/ios/zender-ios-sdk-v#{s.version}.zip" }

  s.social_media_url = 'https://twitter.com/zendertv'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.frameworks = 'UIKit', 'CoreText'

  s.xcconfig = {
    'VALID_ARCHS' =>  'arm64 x86_64',
    'ENABLE_BITCODE' => 'NO'
  }

  s.subspec 'Core' do |cs|
   cs.frameworks = 'AVFoundation', 'AVKit', 'JavaScriptCore','SystemConfiguration'
   cs.vendored_frameworks = [
        "zender-ios-sdk-v#{s.version}/Zender.framework"
    ]
  end

  s.subspec 'Phenix' do |ph|
    ph.vendored_frameworks = [
        "zender-ios-sdk-v#{s.version}/ZenderPhenix.framework",
        "zender-ios-sdk-v#{s.version}/PhenixSdk.framework"
    ]
  end

end
