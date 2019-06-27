Pod::Spec.new do |s|

  s.name         = "RgWebImage"
  s.version      = "0.0.2"
  s.summary      = "图片加载组件"
  s.description  = <<-DESC
                    关于图片加载组件
                   DESC

  s.homepage     = "https://dazhongge.com"
  s.license      = "MIT"
  s.author       = { "Rogue" => "619455850@qq.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/RogueAndy/RgWebImage.git", :tag => "#{s.version}" }

  s.source_files  = "RgWebImage/*"
  s.public_header_files = "RgWebImage/*.h"

  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true
  s.dependency "SDWebImage", "5.0.2"
  s.dependency "AFNetworking", "3.2.1"
end
