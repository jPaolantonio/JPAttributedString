import Foundation
import UIKit

extension String {
    public func attributedString(withAttributes attributes: StringAttributes) -> NSAttributedString {
        return NSAttributedString(string: self, attributes: attributes.attributes())
    }
}
