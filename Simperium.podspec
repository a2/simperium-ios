Pod::Spec.new do |s|
  s.name         = "Simperium"
  s.version      = "0.5.0"
  s.summary      = "Simperium libraries."
  s.description  = "Simperium is a simple way for developers to move data as it changes, instantly and automatically."
  s.homepage     = "https://github.com/Simperium/simperium-ios"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Simperium" => "contact@simperium.com" }

  s.source       = { :git => "https://github.com/Simperium/simperium-ios.git", :tag => "v{s.version}" }

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.source_files = 'Simperium/*.{h,m}', 'External/SPReachability/*', 'External/SFHFKeychainUtils/*'
  s.osx.source_files = 'Simperium-OSX/**/*.{h,m}'

  s.exclude_files = 'Simperium/SPS3Manager.{h,m}'
  s.ios.exclude_files = 'Simperium/SPAuthView.{h,m}'
  s.osx.exclude_files = 'Simperium/SPLoginViewController.{h,m}', 'Simperium/UIImage+Simperium.{h,m}'

  # If you do not explicitly set the list of public header files,
  # all headers of source_files will be made public.
  #
  # s.public_header_files = 'Simperium/**/*.h'

  s.ios.resources = 'Resources/LoginView.xib', 'Resources/LoginView-iPad.xib', 'Resources/View.xib'
  s.osx.resources = 'Resources/AuthWindow.xib'

  # Specify a list of frameworks that the application needs to link
  # against for this Pod to work.
  #
  # s.framework  = 'SomeFramework'
  s.ios.frameworks = 'Security', 'MobileCoreServices', 'CoreData', 'CFNetwork', 'SystemConfiguration', 'Foundation', 'UIKit', 'CoreGraphics'

  # Specify a list of libraries that the application needs to link
  # against for this Pod to work.
  #
  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'

  s.requires_arc = true

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }

  # Finally, specify any Pods that this Pod depends on.
  #
  s.dependency 'ASIHTTPRequest', '~> 1.8.1'
  s.dependency 'CocoaLumberjack'
  s.dependency 'Google-Diff-Match-Patch'
  s.dependency 'JRSwizzle'
  s.dependency 'JSONKit'
  s.dependency 'SocketRocket'

end
