import Foundation
import UIKit

public protocol Attributable {
    func setAttributedText(_ attributedString: NSAttributedString)
    func getAttributedText() -> NSAttributedString?
    
    var jp: AttributedStringDSL { get }
}

extension Attributable {
    public var jp: AttributedStringDSL {
        return AttributedStringDSL(attributable: self)
    }
}

extension UILabel: Attributable {
    public func setAttributedText(_ attributedString: NSAttributedString) {
        attributedText = attributedString
    }
    
    public func getAttributedText() -> NSAttributedString? {
        return attributedText
    }
}

extension UITextView: Attributable {
    public func setAttributedText(_ attributedString: NSAttributedString) {
        attributedText = attributedString
    }
    
    public func getAttributedText() -> NSAttributedString? {
        return attributedText
    }
}
