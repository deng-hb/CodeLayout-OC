#
#  Be sure to run `pod spec lint CodeLayout.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name          = "CodeLayout"
  s.version       = "1.0.1"
  s.summary       = "Objective-C Code Layout ／代码布局"

  s.description   = <<-DESC
                    Objective-C Code Layout easy ／ 代码布局 简单易用 兼容不同手机
                   DESC
  s.homepage      = "https://github.com/deng-hb/CodeLayout-OC"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license       =  { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
                        Licensed under the Apache License, Version 2.0 (the "License");
                        you may not use this file except in compliance with the License.
                        You may obtain a copy of the License at

                        http://www.apache.org/licenses/LICENSE-2.0

                        Unless required by applicable law or agreed to in writing, software
                        distributed under the License is distributed on an "AS IS" BASIS,
                        WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
                        See the License for the specific language governing permissions and
                        limitations under the License.
                        LICENSE
                  }

  s.author        = { "denghb" => "i@denghb.com" }
  s.platform      = :ios, "7.0"
  s.source        = { :git => "https://github.com/deng-hb/CodeLayout-OC.git", :tag => "#{s.version}" }

  s.source_files  = "CodeLayout", "CodeLayout-OC/CodeLayout/**/*.{h,m}"


end
