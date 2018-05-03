Pod::Spec.new do |s|
    s.name         = 'NSDate+Utilities'
    s.version      = '1.0.0'
    s.summary      = 'NSDate Utilities'
    s.homepage     = 'https://github.com/kishorepran/NSDate-Extensions'
    s.license      = 'NONE'
    s.authors      = { 'Erica Sadun' => 'erica@ericasadun.com' }
    s.platform     = :ios, '9.0'
    s.source       = { :git => 'https://github.com/driivz/NSDate-Extensions.git', :tag => s.version.to_s }
    s.source_files = 'Utilities/NSDate+Utilities.{h,m}'
    s.requires_arc = true
end