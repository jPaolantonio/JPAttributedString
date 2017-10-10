import UIKit

public struct AttributedStringDSL {
    let attributable: Attributable
    
    init(attributable: Attributable) {
        self.attributable = attributable
    }
    
    public func set(_ string: String, attributes: StringAttributes) {
        let attributedString = NSAttributedString(string: string, attributes: attributes.attributes())
        attributable.setAttributedText(attributedString)
     }
    
    public func set(_ string: String, _ closure: (_ attributes: StringAttributes) -> Void) {
        let stringAttributes = StringAttributes()
        closure(stringAttributes)
        set(string, attributes: stringAttributes)
    }
    
    public func append(_ string: String, attributes: StringAttributes) {
        let mutableAttributableString: NSMutableAttributedString
        if let currentText = attributable.getAttributedText() {
            mutableAttributableString = NSMutableAttributedString(attributedString: currentText)
        } else {
            mutableAttributableString = NSMutableAttributedString()
        }
        
        let attributedString = NSAttributedString(string: string, attributes: attributes.attributes())
        mutableAttributableString.append(attributedString)
        attributable.setAttributedText(mutableAttributableString)
    }
    
    public func append(_ string: String, _ closure: (_ attributes: StringAttributes) -> Void) {
        let stringAttributes = StringAttributes()
        closure(stringAttributes)
        append(string, attributes: stringAttributes)
    }
}
