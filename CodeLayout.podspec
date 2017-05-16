#
#  Be sure to run `pod spec lint CodeLayout.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name          = "CodeLayout"
  s.version       = "1.0.0"
  s.summary       = "Objective-C Code Layout ／代码布局"

  s.description   = <<-DESC
                    Objective-C Code Layout easy ／ 代码布局 简单易用 兼容不同手机
                   DESC

  s.homepage      = "https://github.com/deng-hb/CodeLayout-OC"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license       = "Apache License, Version 2.0"

  s.author             = { "denghb" => "i@denghb.com" }
  s.platform      = :ios, "5.0"

  s.source        = { :git => "https://github.com/deng-hb/CodeLayout-OC.git", :tag => "#{s.version}" }

  s.source_files  = "CodeLayout", "CodeLayout-OC/CodeLayout/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"


end
