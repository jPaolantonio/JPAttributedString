//
//  JPStringAttribute.m
//  Pods
//
//  Created by James Paolantonio on 2/12/15.
//
//

#import "JPStringAttribute.h"

@interface JPStringAttribute ()
@property (strong, nonatomic) NSMutableDictionary *attributes;
@property (strong, nonatomic) NSMutableParagraphStyle *paragraphStyle;
@end

@implementation JPStringAttribute

- (instancetype)init {
    self = [super init];
    if (self) {
        self.attributes = [[NSMutableDictionary alloc] init];
        self.paragraphStyle = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    }
    return self;
}

- (void)setFont:(UIFont *)font {
    _font = font;
    self.attributes[NSFontAttributeName] = [font copy];
}

- (void)setForegroundColor:(UIColor *)foregroundColor {
    _foregroundColor = foregroundColor;
    self.attributes[NSForegroundColorAttributeName] = [foregroundColor copy];
}

- (void)setBackgroundColor:(UIColor *)backgroundColor {
    _backgroundColor = backgroundColor;
    self.attributes[NSBackgroundColorAttributeName] = [backgroundColor copy];
}

- (void)setLigature:(NSNumber *)ligature {
    _ligature = ligature;
    self.attributes[NSLigatureAttributeName] = [ligature copy];
}

- (void)setKern:(NSNumber *)kern {
    _kern = kern;
    self.attributes[NSKernAttributeName] = [kern copy];
}

- (void)setStrikethroughStyle:(NSNumber *)strikethroughStyle {
    _strikethroughStyle = strikethroughStyle;
    self.attributes[NSStrikethroughStyleAttributeName] = [strikethroughStyle copy];
}

- (void)setUnderlineStyle:(NSNumber *)underlineStyle {
    _underlineStyle = underlineStyle;
    self.attributes[NSUnderlineStyleAttributeName] = [underlineStyle copy];
}

- (void)setStrokeColor:(UIColor *)strokeColor {
    _strokeColor = strokeColor;
    self.attributes[NSStrokeColorAttributeName] = [strokeColor copy];
}

- (void)setStrokeWidth:(NSNumber *)strokeWidth {
    _strokeWidth = strokeWidth;
    self.attributes[NSStrokeWidthAttributeName] = [strokeWidth copy];
}

- (void)setShadow:(NSShadow *)shadow {
    _shadow = shadow;
    self.attributes[NSShadowAttributeName] = [shadow copy];
}

- (void)setTextEffect:(NSString *)textEffect {
    _textEffect = [textEffect copy];
    self.attributes[NSTextEffectAttributeName] = [textEffect copy];
}

- (void)setBaselineOffset:(NSNumber *)baselineOffset {
    _baselineOffset = baselineOffset;
    self.attributes[NSBaselineOffsetAttributeName] = [baselineOffset copy];
}

- (void)setUnderlineColor:(UIColor *)underlineColor {
    _underlineColor = underlineColor;
    self.attributes[NSUnderlineColorAttributeName] = [underlineColor copy];
}

- (void)setStrikethroughColor:(UIColor *)strikethroughColor {
    _strikethroughColor = strikethroughColor;
    self.attributes[NSStrikethroughColorAttributeName] = [strikethroughColor copy];
}

- (void)setLineSpacing:(CGFloat)lineSpacing {
    _lineSpacing = lineSpacing;
    self.paragraphStyle.lineSpacing = lineSpacing;
}

- (void)setParagraphSpacing:(CGFloat)paragraphSpacing {
    _paragraphSpacing = paragraphSpacing;
    self.paragraphStyle.paragraphSpacing = paragraphSpacing;
}

- (void)setAlignment:(NSTextAlignment)alignment {
    _alignment = alignment;
    self.paragraphStyle.alignment = alignment;
}

- (void)setFirstLineHeadIndent:(CGFloat)firstLineHeadIndent {
    _firstLineHeadIndent = firstLineHeadIndent;
    self.paragraphStyle.firstLineHeadIndent = firstLineHeadIndent;
}

- (void)setHeadIndent:(CGFloat)headIndent {
    _headIndent = headIndent;
    self.paragraphStyle.headIndent = headIndent;
}

- (void)setTailIndent:(CGFloat)tailIndent {
    _tailIndent = tailIndent;
    self.paragraphStyle.tailIndent = tailIndent;
}

- (void)setLineBreakMode:(NSLineBreakMode)lineBreakMode {
    _lineBreakMode = lineBreakMode;
    self.paragraphStyle.lineBreakMode = lineBreakMode;
}

- (void)setMinimumLineHeight:(CGFloat)minimumLineHeight {
    _minimumLineHeight = minimumLineHeight;
    self.paragraphStyle.minimumLineHeight = minimumLineHeight;
}

- (void)setMaximumLineHeight:(CGFloat)maximumLineHeight {
    _maximumLineHeight = maximumLineHeight;
    self.paragraphStyle.maximumLineHeight = maximumLineHeight;
}

- (void)setBaseWritingDirection:(NSWritingDirection)baseWritingDirection {
    _baseWritingDirection = baseWritingDirection;
    self.paragraphStyle.baseWritingDirection = baseWritingDirection;
}

- (void)setLineHeightMultiple:(CGFloat)lineHeightMultiple {
    _lineHeightMultiple = lineHeightMultiple;
    self.paragraphStyle.lineHeightMultiple = lineHeightMultiple;
}

- (void)setParagraphSpacingBefore:(CGFloat)paragraphSpacingBefore {
    _paragraphSpacingBefore = paragraphSpacingBefore;
    self.paragraphStyle.paragraphSpacingBefore = paragraphSpacingBefore;
}

- (void)setHyphenationFactor:(float)hyphenationFactor {
    _hyphenationFactor = hyphenationFactor;
    self.paragraphStyle.hyphenationFactor = hyphenationFactor;
}

- (void)setTabStops:(NSArray *)tabStops {
    _tabStops = [tabStops copy];
    self.paragraphStyle.tabStops = tabStops;
}

- (void)setDefaultTabInterval:(CGFloat)defaultTabInterval {
    _defaultTabInterval = defaultTabInterval;
    self.paragraphStyle.defaultTabInterval = defaultTabInterval;
}

- (NSDictionary *)attributedDictionary {
    self.attributes[NSParagraphStyleAttributeName] = [self.paragraphStyle copy];
    return self.attributes;
}

@end
