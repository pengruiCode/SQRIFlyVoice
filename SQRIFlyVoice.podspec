Pod::Spec.new do |s|

  s.name         = "SQRIFlyVoice"
  s.version      = "0.0.5"
  s.summary  	 = '讯飞语音'
  s.homepage     = "https://github.com/pengruiCode/SQRIFlyVoice.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = {'pengrui' => 'pengruiCode@163.com'}
  s.source       = { :git => 'https://github.com/pengruiCode/SQRIFlyVoice.git', :tag => s.version}
  s.platform 	 = :ios, "8.0"
  s.source_files = "SQRIFlyVoice/*.{h,m}"
  s.vendored_frameworks = 'SQRIFlyVoice/*.framework'
  s.requires_arc = true
  s.description  = <<-DESC
			设置讯飞语音
                   DESC
  s.frameworks = 'Foundation', 'UIKit', 'AVFoundation', 'SystemConfiguration', 'CoreTelephony', 'AudioToolbox', 'CoreLocation', 'Contacts', 'AddressBook', 'QuartzCore', 'CoreGraphics'

  s.library = "z"

  s.dependency "SQRBaseDefineWithFunction"

 end