// https://github.com/Quick/Quick

import Quick
import Nimble
import JPAttributedString

class StringAttributesSpec: QuickSpec {
    override func spec() {
        var subject: StringAttributes!
        
        beforeEach {
            subject = StringAttributes()
        }
        
        describe("#attributes") {
            beforeEach {
                subject.font = UIFont.boldSystemFont(ofSize: 12)
                subject.foregroundColor = UIColor.blue
            }
            
            it("creates a proper hash") {
                let attributes: [NSAttributedStringKey : Any] = subject.attributes()
                expect(attributes[NSAttributedStringKey.font] as? UIFont) == UIFont.boldSystemFont(ofSize: 12)
                expect(attributes[NSAttributedStringKey.foregroundColor] as? UIColor) == UIColor.blue
            }
        }
    }
}
