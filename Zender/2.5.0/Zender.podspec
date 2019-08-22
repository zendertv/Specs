Pod::Spec.new do |s|
  s.name             = "Zender"
  s.version          = "2.5.0"
  s.summary          = "The Zender iOS Player"
  s.homepage         = "https://www.zender.tv"
  s.documentation_url = "https://github.com/zendertv/zender-docs"

  s.license      = { :type => "Proprietary", :text => <<-LICENSE
                          Copyright 2019 Small Town Heroes BVBA.
                          Confidential and Proprietary. All rights reserved.
                        LICENSE
                      }

  s.source           = { :http => "https://repo.zender.tv/ios/zender-ios-sdk-v#{s.version}.zip" }
  s.author           = { "Zender" => "hello@zender.tv" }

  # s.social_media_url = 'https://twitter.com/zendertv'

  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.frameworks = 'UIKit', 'CoreText'

  s.xcconfig = {
    'VALID_ARCHS' =>  'arm64 x86_64',
    'ENABLE_BITCODE' => 'NO'
  }

  s.default_subspec = 'Core', 'Phenix'

  s.subspec 'Core' do |cs|
   cs.frameworks = 'AVFoundation', 'AVKit', 'JavaScriptCore','SystemConfiguration'
   cs.vendored_frameworks = [
        "lib/Zender.framework"
    ]
   
   cs.script_phase = {
         :name => 'Zender strip frameworks',
	:script => "chmod +x ${PODS_TARGET_SRCROOT}/lib/Zender.framework/strip-framework.sh ; ${PODS_TARGET_SRCROOT}/lib/Zender.framework/strip-framework.sh",
        :execution_position => :after_compile
   }
  end

  s.subspec 'Phenix' do |ph|
    ph.vendored_frameworks = [
        "lib/ZenderPhenix.framework"
    ]
    ph.dependency 'Zender/Core' , "#{s.version}"
    ph.dependency 'PhenixSdk', '2019.2.2'
  end

  s.subspec 'Youtube' do |yt|
    yt.vendored_frameworks = [
        "lib/ZenderYoutube.framework"
    ]

    yt.dependency 'Zender/Core' , "#{s.version}"
    yt.dependency 'youtube-ios-player-helper'
  end

  #s.subspec 'Netinsight' do |ni|
    #ni.vendored_frameworks = [
        #"lib/ZenderNetinsight.framework"
    #]

    #ni.dependency 'Zender/Core' , "#{s.version}"
    #ni.dependency 'Sye', '1.14.11'
  #end

  # cocoapods_version = '>= 0.36'

end
