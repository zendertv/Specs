Pod::Spec.new do |spec|

  spec.version      = "1.14.11" # keep in mind "spec.source" syntax.

  spec.name         = "Sye"
  spec.homepage     = "https://netinsight.net/"
  spec.summary      = "Video Real Time Solutions"
  spec.license      = { :type => "Proprietary", :text => <<-LICENSE
                          Copyright 2019 Netinsight
                          Confidential and Proprietary. All rights reserved.

                        LICENSE
                      }
  spec.author       = "Netinsight inc"

  spec.source       = { :http => "https://repo.zender.tv/ios/sye-ios-sdk-v#{spec.version}.zip" }
  spec.ios.vendored_framework  = "lib/SyeClient.framework"

  spec.platform     = :ios, "9.0"
  spec.xcconfig     = { "ENABLE_BITCODE" => "NO" }
end
