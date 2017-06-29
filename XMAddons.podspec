Pod::Spec.new do |s|
  s.name          = "XMAddons"
  s.version       = "0.0.1"
  s.summary       = "A short description of XMAddons."
  s.homepage      = "https://github.com/bindurs/XMAddons"
  s.license       = "MIT"
  s.platform      = :ios, "8.0"
  s.author        = { "Bindu" => "bindu93rstvm@gmail.com" }
  s.source        = { :git => "https://github.com/bindurs/XMAddons.git", :tag => "#{s.version}" }
  s.source_files  = "XMAddons", "XMAddons/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

end
