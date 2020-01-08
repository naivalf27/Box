#
#  Be sure to run `pod spec lint MyLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "Box"
  s.version      = "4.0.0"
  s.summary      = "Swift microframework which implements Box"

  s.description  = <<-DESC
                    This is a Swift microframework which implements Box<T> & MutableBox<T>
                   DESC

  s.homepage     = "https://github.com/naivalf27/Box"

  s.license      = { :type => "MIT", :file => "LICENSE.md" }

  s.author             = { "naivalf27" => "fmary.perso@gmail.com" }

  s.platform     = :ios
  s.ios.deployment_target = '8.0'

  s.source       = { :git => "https://github.com/naivalf27/Box.git",
                      :tag => "4.0.0"
                    }

  s.source_files  = "Box/*.swift"

  s.requires_arc = true

end
