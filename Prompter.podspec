Pod::Spec.new do |s|

  s.name                = "Prompter"
  s.version             = "0.1.0"
  s.summary             = "Light weight helpers for developing interactive command line (cli) scripts in Swift."
  s.license             = { :type => "MIT", :file => "LICENSE.md" }
  s.author              = { "Matthew Clarkson" => "mpclarkson@gmail.com" }
  s.social_media_url    = "http://twitter.com/matt_clarkson"
  s.platform            = :osx, "10.11"
  s.requires_arc        = true
  s.source              = { :git => "https://github.com/mpclarkson/Prompter.git", :tag => s.version.to_s }
  s.homepage            = 'https://github.com/mpclarkson/Prompter'
  s.source_files        = './Source/*.{swift}'
  s.documentation_url   = 'https://mpclarkson.github.io/Prompter'

end
