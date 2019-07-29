Pod::Spec.new do |spec|

  spec.version      = "2019.2.1" # keep in mind "spec.source" syntax.

  spec.name         = "PhenixSdk"
  spec.homepage     = "https://phenixrts.com/"
  spec.summary      = "Video Real Time Solutions"
  spec.license      = { :type => "Proprietary", :text => <<-LICENSE
                          Copyright 2019 Phenix Real Time Solutions, Inc.
                          Confidential and Proprietary. All rights reserved.

                          By using this code you agree to the Phenix Terms of Service found online here:
                          http://phenixrts.com/terms-of-service.html
                        LICENSE
                      }
  spec.author       = "Phenix Real Time Solutions, Inc."

  spec.source       = { :http => "https://repo.zender.tv/ios/phenixrts-ios-sdk-v#{spec.version}.zip" }
  spec.ios.vendored_framework  = "phenixrts-ios-sdk-v#{spec.version}/lib/Universal/PhenixSdk.framework"

  spec.platform     = :ios, "9.0"
  spec.xcconfig     = { "ENABLE_BITCODE" => "NO" }
end
