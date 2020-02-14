require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-daummap"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                    react-native use daum map
                   DESC
  s.homepage     = "https://github.com/asata/react-native-daummap"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "JeongHun Kang" => "asata@teamsf.co.kr" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/toy0605/react-native-daummap.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true
  s.vendored_frameworks = "ios/DaumMap.framework"

  s.dependency "React"
  # ...
  # s.dependency "..."
end

