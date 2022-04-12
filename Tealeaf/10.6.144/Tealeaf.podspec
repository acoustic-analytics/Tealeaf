
Pod::Spec.new do |s|
  s.name = 'Tealeaf'
  s.version = '10.6.144'
  s.author = 'Acoustic, L.P.'
  s.license = { :type => 'Proprietary, Acoustic, L.P.', :text => 'https://github.com/acoustic-analytics/Tealeaf/blob/master/Licenses/License' }
  s.homepage = 'https://github.com/acoustic-analytics/Tealeaf'
  s.summary = 'Acoustic Tealeaf EOCore iOS SDK'
  s.cocoapods_version = '>= 1.10.0'
  s.platforms = { :ios => "9.0" }
  s.source = { :git => 'https://github.com/acoustic-analytics/Tealeaf.git', :tag => '10.6.144'}
  s.default_subspec = 'Core'
  s.subspec 'Core' do |core|
    core.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
    core.library = 'z'
    core.resource = "SDKs/iOS/Release/TLFResources.bundle"
    core.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Release/Tealeaf.xcframework/*/Tealeaf.framework/Headers/"/** ' }
    core.vendored_frameworks = 'SDKs/iOS/Release/Tealeaf.xcframework'
    core.dependency 'EOCore'
  end
  s.subspec 'MD5' do |md5|
    md5.dependency 'TealeafMD5'
    md5.dependency 'Tealeaf/Core'
  end
  s.subspec 'SHA512' do |sha512|
    sha512.dependency 'TealeafSHA2'
    sha512.dependency 'Tealeaf/Core'
  end
end