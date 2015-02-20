//
//  JPStringAttribute.h
//  Pods
//
//  Created by James Paolantonio on 2/12/15.
//
//

#import <UIKit/UIKit.h>

@interface JPStringAttribute : NSObject

///------------------------------------
/// @name NSAttributedString Attributes
///------------------------------------

/**
 *  NSFontAttributeName
 */
@property (strong, nonatomic) UIFont *font;

/**
 *  NSForegroundColorAttributeName
 */
@property (strong, nonatomic) UIColor *foregroundColor;

/**
 *  NSBackgroundColorAttributeName
 */
@property (strong, nonatomic) UIColor *backgroundColor;

/**
 *  NSLigatureAttributeName
 */
@property (strong, nonatomic) NSNumber *ligature;

/**
 *  NSKernAttributeName
 */
@property (strong, nonatomic) NSNumber *kern;

/**
 *  NSStrikethroughStyleAttributeName
 */
@property (strong, nonatomic) NSNumber *strikethroughStyle;

/**
 *  NSUnderlineStyleAttributeName
 */
@property (strong, nonatomic) NSNumber *underlineStyle;

/**
 *  NSStrokeColorAttributeName
 */
@property (strong, nonatomic) UIColor *strokeColor;

/**
 *  NSStrokeWidthAttributeName
 */
@property (strong, nonatomic) NSNumber *strokeWidth;

/**
 *  NSShadowAttributeName
 */
@property (strong, nonatomic) NSShadow *shadow;

/**
 *  NSTextEffectAttributeName
 */
@property (copy, nonatomic) NSString *textEffect;

/**
 *  NSBaselineOffsetAttributeName
 */
@property (strong, nonatomic) NSNumber *baselineOffset;

/**
 *  NSUnderlineColorAttributeName
 */
@property (strong, nonatomic) UIColor *underlineColor;

/**
 *  NSStrikethroughColorAttributeName
 */
@property (strong, nonatomic) UIColor *strikethroughColor;

///----------------------------------
/// @name NSParagraphStyle Attributes
///----------------------------------

@property(assign, nonatomic) CGFloat lineSpacing;
@property(assign, nonatomic) CGFloat paragraphSpacing;
@property(assign, nonatomic) NSTextAlignment alignment;
@property(assign, nonatomic) CGFloat firstLineHeadIndent;
@property(assign, nonatomic) CGFloat headIndent;
@property(assign, nonatomic) CGFloat tailIndent;
@property(assign, nonatomic) NSLineBreakMode lineBreakMode;
@property(assign, nonatomic) CGFloat minimumLineHeight;
@property(assign, nonatomic) CGFloat maximumLineHeight;
@property(assign, nonatomic) NSWritingDirection baseWritingDirection;
@property(assign, nonatomic) CGFloat lineHeightMultiple;
@property(assign, nonatomic) CGFloat paragraphSpacingBefore;
@property(assign, nonatomic) float hyphenationFactor;
@property(copy, nonatomic) NSArray *tabStops;
@property(assign, nonatomic) CGFloat defaultTabInterval;

///----------------------------
/// @name Attributed Dictionary
///----------------------------

/**
 *  Creates a NSDictionary to be used as a NSAttributedString's attributes
 */
- (NSDictionary *)attributedDictionary;

@end
