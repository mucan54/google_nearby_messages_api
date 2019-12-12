#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'google_nearby_messages_api'
  s.version          = '0.0.1'
  s.summary          = 'A new Flutter plugin gives acces to use google neaby messages api in flutter project'
  s.description      = <<-DESC
A new Flutter plugin gives acces to use google neaby messages api in flutter project
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'NearbyMessages'

  s.ios.deployment_target = '8.0'
end

