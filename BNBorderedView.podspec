Pod::Spec.new do |s|
  s.name         = 'BNBorderedView'
  s.version      = '0.1.0'
  s.platform     = :ios
  s.summary      = 'Bordered UIView with support for Insets.'
  s.homepage     = 'https://github.com/brentnycum/BNBorderedView'
  s.author       = { 'Brent Nycum' => 'brentnycum@gmail.com' }
  s.source       = { :git => 'https://github.com/brentnycum/BNBorderedView.git', :tag => '0.1.0' }
  s.source_files = 'BNBorderedView.{h,m}'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
end
