Pod::Spec.new do |s|

s.name        = 'OCPodToSPMDemo'
s.version     = '1.0.3'
s.license     = 'MIT'
s.ios.deployment_target = '14.0'

s.summary  = 'A demonstration about modify a pod lib to support SPM.'
s.homepage = 'https://github.com/ChiaoteNi/OCPodToSPMDemo'
s.author   = { 'ChiaoteNi' => 'aaron.chiao.19@gmail.com' }
s.source   = { :git => 'https://github.com/ChiaoteNi/OCPodToSPMDemo.git', :tag => '1.0.3' }

s.private_header_files  = 'OCPodToSPMDemo/Internals/*.h'
s.ios.source_files = 'OCPodToSPMDemo/**/*{.h,m}'
s.dependency 'NTPClient', '~> 1.0.1'
s.framework = 'Foundation'
s.libraries    = 'z'
s.requires_arc = true

end
