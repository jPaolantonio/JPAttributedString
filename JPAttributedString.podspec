Pod::Spec.new do |s|
s.name             = "JPAttributedString"
s.version          = "1.0.0-beta.2"
s.summary          = "A DSL for creating, changing, and using NSAttributedStrings"
s.description      = <<-DESC
Working with NSAttributedStrings can be a pain. JPAttributedString let's you easily create attributed strings on labels and text views.

DESC
s.homepage         = "https://github.com/jPaolantonio/JPAttributedString"
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = "James Paolantonio"
s.source           = { :git => "https://github.com/jPaolantonio/JPAttributedString.git", :tag => s.version.to_s }
s.social_media_url = 'https://twitter.com/jPaolantonio'

s.ios.deployment_target = '9.0'
s.requires_arc = true

s.source_files = 'JPAttributedString/Classes/**/*'

s.ios.frameworks = 'UIKit'
end
