import Foundation
import UIKit

public class StringAttributes {
    public var font: UIFont?
    public var foregroundColor: UIColor?
    public var backgroundColor: UIColor?
    public var ligature: NSNumber?
    public var kern: NSNumber?
    public var strikethroughStyle: NSNumber?
    public var underlineStyle: NSNumber?
    public var strokeColor: UIColor?
    public var strokeWidth: NSNumber?
    public var shadow: NSShadow?
    public var textEffect: NSString?
    public var attachment: NSTextAttachment?
    public var link: AnyObject?
    public var baselineOffset: NSNumber?
    public var underlineColor: UIColor?
    public var strikethroughColor: UIColor?
    public var obliqueness: NSNumber?
    public var expansion: NSNumber?
    public var writingDirection: [NSNumber]?
    public var verticalGlyphForm: NSNumber?
    
    public var lineSpacing: CGFloat?
    public var paragraphSpacing: CGFloat?
    public var alignment: NSTextAlignment?
    public var firstLineHeadIndent: CGFloat?
    public var headIndent: CGFloat?
    public var tailIndent: CGFloat?
    public var lineBreakMode: NSLineBreakMode?
    public var minimumLineHeight: CGFloat?
    public var maximumLineHeight: CGFloat?
    public var baseWritingDirection: NSWritingDirection?
    public var lineHeightMultiple: CGFloat?
    public var paragraphSpacingBefore: CGFloat?
    public var hyphenationFactor: Float?
    
    public init() { }
    
    public func attributes() -> [NSAttributedStringKey : Any] {
        var attributes : [NSAttributedStringKey : Any] = [:]

        if let font = font { attributes[.font] = font }
        if let foregroundColor = foregroundColor { attributes[.foregroundColor] = foregroundColor }
        if let backgroundColor = backgroundColor { attributes[.backgroundColor] = backgroundColor }
        if let ligature = ligature { attributes[.ligature] = ligature }
        if let kern = kern { attributes[.kern] = kern }
        if let strikethroughStyle = strikethroughStyle { attributes[.strikethroughStyle] = strikethroughStyle }
        if let underlineStyle = underlineStyle { attributes[.underlineStyle] = underlineStyle }
        if let strokeColor = strokeColor { attributes[.strokeColor] = strokeColor }
        if let strokeWidth = strokeWidth { attributes[.strokeWidth] = strokeWidth }
        if let shadow = shadow { attributes[.shadow] = shadow }
        if let textEffect = textEffect { attributes[.textEffect] = textEffect }
        if let attachment = attachment { attributes[.attachment] = attachment }
        if let link = link { attributes[.link] = link }
        if let baselineOffset = baselineOffset { attributes[.baselineOffset] = baselineOffset }
        if let underlineColor = underlineColor { attributes[.underlineColor] = underlineColor }
        if let strikethroughColor = strikethroughColor { attributes[.strikethroughColor] = strikethroughColor }
        if let obliqueness = obliqueness { attributes[.obliqueness] = obliqueness }
        if let expansion = expansion { attributes[.expansion] = expansion }
        if let writingDirection = writingDirection { attributes[.writingDirection] = writingDirection }
        if let verticalGlyphForm = verticalGlyphForm { attributes[.verticalGlyphForm] = verticalGlyphForm }
        
        let paragraphStyle = NSMutableParagraphStyle()
        if let lineSpacing = lineSpacing { paragraphStyle.lineSpacing = lineSpacing }
        if let paragraphSpacing = paragraphSpacing { paragraphStyle.paragraphSpacing = paragraphSpacing }
        if let alignment = alignment { paragraphStyle.alignment = alignment }
        if let firstLineHeadIndent = firstLineHeadIndent { paragraphStyle.firstLineHeadIndent = firstLineHeadIndent }
        if let headIndent = headIndent { paragraphStyle.headIndent = headIndent }
        if let tailIndent = tailIndent { paragraphStyle.tailIndent = tailIndent }
        if let lineBreakMode = lineBreakMode { paragraphStyle.lineBreakMode = lineBreakMode }
        if let minimumLineHeight = minimumLineHeight { paragraphStyle.minimumLineHeight = minimumLineHeight }
        if let maximumLineHeight = maximumLineHeight { paragraphStyle.maximumLineHeight = maximumLineHeight }
        if let baseWritingDirection = baseWritingDirection { paragraphStyle.baseWritingDirection = baseWritingDirection }
        if let lineHeightMultiple = lineHeightMultiple { paragraphStyle.lineHeightMultiple = lineHeightMultiple }
        if let paragraphSpacingBefore = paragraphSpacingBefore { paragraphStyle.paragraphSpacingBefore = paragraphSpacingBefore }
        if let hyphenationFactor = hyphenationFactor { paragraphStyle.hyphenationFactor = hyphenationFactor }
        attributes[.paragraphStyle] = paragraphStyle
        
        return attributes
    }
}

