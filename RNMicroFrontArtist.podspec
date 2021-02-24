Pod::Spec.new do |s|
  s.name         = "RNMicroFrontArtist"
  s.version      = "1.0.0"
  s.summary      = "Esse é meu microfront dos artistas"
  s.homepage     = "https://github.com/rondinellimorais"
  s.license      = "MIT"
  s.author       = { "Rondinelli Morais" => "rondinellimorais@gmail.com" }
  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/rondinellimorais/RNMicroFrontArtist", :branch => "master" }
  
  s.source_files = '**/*.{h,m,swift}'

  s.resource_bundles = {
    'Bundle' => ['RNMicroFrontArtist.jsbundle']
  }

  s.dependency "React"

end