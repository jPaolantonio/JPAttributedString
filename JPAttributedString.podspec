Pod::Spec.new do |s|
  s.name             = "JPAttributedString"
  s.version          = "0.1.8"
  s.summary          = "A DSL for creating, changing, and using NSAttributedStrings"
  s.description      = <<-DESC
                       A DSL for creating, changing, and using NSAttributedStrings

                       * UILabel category
                       DESC
  s.homepage         = "https://github.com/jPaolantonio/JPAttributedString"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = "James Paolantonio"
  s.source           = { :git => "https://github.com/jPaolantonio/JPAttributedString.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/jPaolantonio'

  s.ios.deployment_target = '7.0'
  s.requires_arc = true

  s.source_files = 'JPAttributedString/Classes/**/*'

  s.ios.frameworks = 'UIKit'
end
