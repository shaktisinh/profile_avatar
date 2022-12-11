#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint profile_avatar.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'profile_avatar'
  s.version          = '0.0.1'
  s.summary          = 'Generate your profile avatar by  Image url, name or by default it will return avatar icon, Its pretty easy to use and fully constomizable based on shape, color, size and style so all control is on your hand.'
  s.description      = <<-DESC
Generate your profile avatar by  Image url, name or by default it will return avatar icon, Its pretty easy to use and fully constomizable based on shape, color, size and style so all control is on your hand.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
