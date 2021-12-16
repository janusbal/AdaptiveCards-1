  
Pod::Spec.new do |spec|
  spec.name             = 'AdaptiveCards'

  spec.version          = '2.8.3'
  
  spec.license          = { :type => 'Adaptive Cards Binary EULA', :file => 'source/EULA-Non-Windows.txt' } 
  
  spec.homepage         = 'https://adaptivecards.io'
  
  spec.authors          = { 'AdaptiveCards' => 'Joseph.Woo@microsoft.com' }
  
  spec.summary          = 'Adaptive Cards are a new way for developers to exchange card content in a common and consistent way'
  
  spec.source       = { :git => 'https://github.com/janusbal/AdaptiveCards-1.git', :branch => 'fluent_provider_privates_unmove_files' }

  spec.default_subspecs = 'AdaptiveCardsPublic', 'AdaptiveCardsPrivate', 'ObjectModel', 'UIProviders'

  spec.subspec 'AdaptiveCardsPublic' do | sspec |
    sspec.source_files = 'source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/*.{h,m,mm}'
    sspec.resource_bundles = {'AdaptiveCards' => ['source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/Resources/**/*']}
    sspec.dependency 'AdaptiveCards/AdaptiveCardsPrivate'
    sspec.dependency 'AdaptiveCards/ObjectModel'
  end

  spec.subspec 'ObjectModel' do | sspec |
    sspec.source_files = 'source/shared/cpp/ObjectModel/**/*.{h,cpp}'
    sspec.header_mappings_dir = 'source/shared/cpp/ObjectModel/'
    sspec.private_header_files = 'source/shared/cpp/ObjectModel/**/*.{h}'
    sspec.xcconfig = {
         'CLANG_CXX_LANGUAGE_STANDARD' => 'c++17',
         'CLANG_CXX_LIBRARY' => 'libc++'
    }
  end

  spec.subspec 'AdaptiveCardsPrivate' do | sspec |
    sspec.source_files = 'source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/PrivateHeaders/**/*.{h,m,mm}'
    sspec.header_mappings_dir = 'source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/PrivateHeaders/'
    sspec.private_header_files = 'source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/PrivateHeaders/*.h'
    sspec.project_header_files = 'source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/PrivateHeaders/ProjectHeaders/*.h'
  end
  
  spec.subspec 'UIProviders' do | sspec |
    sspec.source_files = 'source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/UIProviders/*.{h,m,mm}'
    sspec.header_mappings_dir = 'source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/UIProviders/'
    sspec.project_header_files = 'source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/UIProviders/*.h'
    sspec.dependency 'AdaptiveCards/AdaptiveCardsPrivate'
    sspec.dependency 'MicrosoftFluentUI/Tooltip_ios', '~> 0.3.6'
  end

  spec.platform         = :ios, '14'
  spec.frameworks = 'AVFoundation', 'AVKit', 'CoreGraphics', 'QuartzCore', 'UIKit'
  
  

  spec.exclude_files = 'source/ios/AdaptiveCards/AdaptiveCards/AdaptiveCards/include/**/*'

end

