#
#  Be sure to run `pod spec lint StringifyMarco.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "StringifyMarco"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of StringifyMarco."

  spec.description  = <<-DESC
  hello
                   DESC

  spec.homepage     = "http://EXAMPLE/StringifyMarco"

  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "zhouzhenhua" => "zhouzhenhua@joyy.com" }

  #  When using multiple platforms
  spec.ios.deployment_target = "13.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"
  # spec.visionos.deployment_target = "1.0"

  spec.source       = { :git => "http://zhangjingjian/StringifyMarco.git", :tag => "#{spec.version}" }

  # 1
  spec.source_files = 'Classes/**/*'
  spec.swift_version = "5.9"
  # 2
  spec.preserve_paths = ["Macros/StringifyMacros"]
  # 3
  spec.pod_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xfrontend -load-plugin-executable -Xfrontend ${PODS_ROOT}/StringifyMarco/Macros/StringifyMacros#StringifyMacros'
  }
  # 4
  spec.user_target_xcconfig = {
    'OTHER_SWIFT_FLAGS' => '-Xfrontend -load-plugin-executable -Xfrontend ${PODS_ROOT}/StringifyMarco/Macros/StringifyMacros#StringifyMacros'
  }
end
