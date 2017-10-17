Pod::Spec.new do |s|
  s.name         = "IpsLocation"
  s.version      = "1.0.1"
  s.summary      = "室内定位SDK."
  s.description  = <<-DESC
	室内定位 IpsLocation Indoor location map ibeacon hospital
                   DESC

  s.homepage     = "https://github.com/ipsmap/IpsLocation-iOS"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "ipsmap" => "richard.chin@ipsmap.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/ipsmap/IpsLocation-iOS.git", :tag => s.version  }
  s.vendored_frameworks = "IpsLocation/IpsLocation.framework"
  # s.resources = "IpsmapSDK.xcassets"
  s.frameworks = "UIKit", "Foundation", "SystemConfiguration", "CoreGraphics", "CoreLocation"
  s.libraries = "z", "z.1.2.5", "xml2"

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "Bugly", "~> 2.4.7"
  # s.dependency "Mixpanel", "~> 3.1.3"
  # s.dependency "Parse", "~> 1.14.4"
  # s.dependency "SDWebImage", "~> 3.8.2"
  # s.dependency "SVProgressHUD", "~> 2.1.2"

end
