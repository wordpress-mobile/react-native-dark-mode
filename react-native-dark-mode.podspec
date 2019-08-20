#
#  Be sure to run `pod spec lint react-native-dark-mode.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

require 'json'
version = JSON.parse(File.read('package.json'))["version"]

Pod::Spec.new do |spec|
  spec.name            = "react-native-dark-mode"
  spec.version         = version
  spec.summary         = "Detect dark mode in React Native"
  spec.homepage        = "https://github.com/codemotionapps/react-native-dark-mode"
  spec.license         = "MIT"
  spec.author          = "codemotionapps"
  spec.platform        = :ios, "8.0"
  spec.requires_arc     = true
  spec.source          = { :git => "https://github.com/codemotionapps/react-native-dark-mode.git", :tag => "#{version}" }
  spec.source_files    = "library/ios/*.{h,m}"
  spec.preserve_paths  = "**/*.js"

  spec.dependency 'React'
end
