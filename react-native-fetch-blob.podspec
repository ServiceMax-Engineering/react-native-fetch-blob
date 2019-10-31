require 'json'
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name            = pjson["name"]
  s.version         = pjson["version"]
  s.summary          = "A project committed to make file acess and data transfer easier, effiecient for React Native developers."
  s.requires_arc = true
  s.license      = 'MIT'
  s.homepage     = 'n/a'
  s.authors      = { "wkh237" => "xeiyan@gmail.com" }
  s.source       = { :git => "https://github.com/wkh237/react-native-fetch-blob", :tag => 'v0.10.3-beta.1'}
  s.source_files = 'ios/**/*.{h,m}'
  s.platform     = :ios, "7.0"
  s.dependency 'React'
end
